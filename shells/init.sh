#!/usr/bin/env bash

# Given the Xilinx FPGA part number, this finds the appropriate FPGA family,
# which is appended to the provided configFile
find_family () {
  configFile=$1
  part=$2

  FPGA_family="${part:2:1}"
  if [[ $FPGA_family == 'k' ]]; then
    FPGA_family='Kintex'
  elif [[ $FPGA_family == 'v' ]]; then
    FPGA_family='Virtex'
  elif [[ $FPGA_family == '7' ]]; then
    FPGA_family='7series'
  else
    FPGA_family="${part:2:2}"
    if [[ $FPGA_family != 'zu' ]]; then
      return 1
    fi
  fi

  if [[ $FPGA_family == '7series' ]]; then
    FPGA_type="${part:3:1}"
    if [[ $FPGA_type == 'k' ]]; then
      FPGA_type='Kintex'
    elif [[ $FPGA_type == 'v' ]]; then
      FPGA_type='Virtex'
    elif [[ $FPGA_type == 'z' ]]; then
      FPGA_type='Zynq'
    else
      return 2
    fi
  else
    FPGA_type="${part%%-*}"
    FPGA_type="${FPGA_type: -1}"
    if [[ $FPGA_type == 'p' ]]; then
      FPGA_type='Ultrascale_Plus'
    else
      FPGA_type='Ultrascale'
    fi
  fi

  if [[ $FPGA_family == 'zu' ]]; then
    Solution='Zynq_Ultrascale_Plus'
  else
    Solution=${FPGA_family}_${FPGA_type}
  fi

  echo "export SHELLS_PART_FAMILY=$Solution" >> $configFile

  return 0
}

if [[ "$#" != 5 && "$#" != 7 && "$#" != 8 ]]; then
  echo "5,7 or 8 arguments expected, got $#"
  echo "Usage: init.sh /abs/path/to//repository /abs/path/to/vivado /abs/path/to/vivado_hls vivado_version vivado_hls_version [part name] [board] [board name]"
  return 1
fi

repoPath=$(readlink -f "$1")
vivadoPath=$(readlink -f "$2")
hlsPath=$(readlink -f "$3")
vivadoVersion=$4
hlsVersion=$5
if [[ "$#" > 5 ]]; then
  part=$6
  board_name=$7
fi
if [[ "$#" > 7 ]]; then
  board=$8
  
fi

configFile=~/.shells

if [[ -f $configFile ]]; then
  echo "Updating shells initialization..."
  unset SHELLS_BOARD
  rm $configFile
fi

if [[ $hlsVersion == "2017.2" ]]; then
  hlsPath_append=$hlsPath/$hlsVersion
elif [[ $hlsVersion == "2017.4" ]]; then
  hlsPath_append=$hlsPath/$hlsVersion
elif [[ $hlsVersion == "2018.1" ]]; then
  hlsPath_append=$hlsPath/$hlsVersion  
elif [[ $hlsVersion == "2018.2" ]]; then
  hlsPath_append=$hlsPath/$hlsVersion
else
  echo "Error: unsupported Vivado HLS Version $hlsVersion"
  return 1
fi

if [[ "$#" > 5 ]]; then
  # https://stackoverflow.com/a/2264537
  part=$(echo "$part" | tr '[:upper:]' '[:lower:]') # convert to lower-case

  find_family $configFile $part
  if [[ $? != 0 ]]; then
    echo "Error $?: Unable to identify FPGA family from part $part"
    return 1
  fi
fi

vivadoPath_append=$vivadoPath/$vivadoVersion

{
  echo "export SHELLS_PATH=$repoPath"
  echo "export SHELLS_VIVADO_PATH=$vivadoPath_append"
  echo "export SHELLS_HLS_PATH=$hlsPath_append"
  echo "export SHELLS_VIVADO_VERSION=$vivadoVersion"
  echo "export SHELLS_HLS_VERSION=$hlsVersion"
} >> $configFile

if [[ "$#" > 5 ]]; then
  echo "export SHELLS_PART=$part" >> $configFile
  echo "export SHELLS_BOARD_NAME=$board_name" >> $configFile
fi
if [[ "$#" == 8 ]]; then
  echo "export SHELLS_BOARD=$board" >> $configFile
fi

cat >> $configFile <<EOF

shells-update-board() {
  if [[ "\$#" != 1 || \$1 == '--h' || \$1 == '-help' ]]; then
    echo "Usage: shells-update-board board"
    return 1
  fi
  
  if [[ \$1 == "pynq-z2" ]]; then
    partName=xc7z020clg400-1
    board=tul.com.tw:pynq-z2:part0:1.0
  elif [[ \$1 == "sidewinder" ]]; then
    partName=xczu19eg-ffvc1760-2-i
    board=fidus.com:sidewinder100:part0:1.0
  elif [[ \$1 == "adm-8k5" ]]; then
    partName=xcku115-flva1517-2-e
    board="NULL"
  elif [[ \$1 == "adm-8k5-debug" ]]; then
    partName=xcku115-flva1517-2-e
    board="NULL"
  else
    echo "Unknown board \$1 specified. No changes made to shells"
    return 1
  fi
  
  boardName=\$1

  if [[ \$board != "NULL" ]]; then
    source \$SHELLS_PATH/init.sh \\
      \$SHELLS_PATH \\
      $vivadoPath \\
      $hlsPath \\
      \$SHELLS_VIVADO_VERSION \\
      \$SHELLS_HLS_VERSION \\
      \$partName \\
      \$boardName \\
      \$board
  else
    source \$SHELLS_PATH/init.sh \\
      \$SHELLS_PATH \\
      $vivadoPath \\
      $hlsPath \\
      \$SHELLS_VIVADO_VERSION \\
      \$SHELLS_HLS_VERSION \\
      \$partName \\
      \$boardName
  fi
}

shells-update-versions() {
  if [[ "\$#" != 2 || \$1 == '--h' || \$1 == '-help' ]]; then
    echo "Usage: shells-update-versions vivado_version vivado_hls_version"
    return 1
  fi

  configFile=$configFile
  vivadoPath=$vivadoPath

  # replace only lines starting with SHELLS_*
  sed -i "/^export SHELLS_VIVADO_VERSION=/ s/export SHELLS_VIVADO_VERSION=.*/export SHELLS_VIVADO_VERSION=\$1/" \$configFile
  sed -i "/^export SHELLS_HLS_VERSION=/ s/export SHELLS_HLS_VERSION=.*/export SHELLS_HLS_VERSION=\$2/" \$configFile

  source \$configFile
  source \$vivadoPath/\$SHELLS_VIVADO_VERSION/settings64.sh
}
EOF

source $configFile
source $vivadoPath_append/settings64.sh

if ! grep -Fq "# added by shells" ~/.bashrc; then 
  echo "source $configFile # added by shells" >> ~/.bashrc
fi
