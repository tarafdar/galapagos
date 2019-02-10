proc get_design_name {design_name} {
  set cur_design [current_bd_design -quiet]
  set list_cells [get_bd_cells -quiet]
  set errMsg ""
  set nRet 0

  if { ${design_name} eq "" } {
    # USE CASES:
    # 1): Missing design name
    set errMsg "Please set the variable <design_name> to a non-empty value."
    set nRet 1
  } elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
    # USE CASES:
    # 2): Current design opened AND is empty AND names same.
    # 3): Current design opened AND is empty AND names diff; design_name NOT 
    #     in project.
    # 4): Current design opened AND is empty AND names diff; design_name exists
    #     in project.

    if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of \
        <design_name> from <$design_name> to <$cur_design> since current \
        design is empty."
      set design_name [get_property NAME $cur_design]
    }
    common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design \
      <$cur_design>..."

  } elseif { ${cur_design} ne "" && $list_cells ne "" && \
    $cur_design eq $design_name } {
    # USE CASES:
    # 5) Current design opened AND has components AND same names.

    set errMsg "Design <$design_name> already exists in your project, please \
      set the variable <design_name> to another value."
    set nRet 1
  } elseif { [get_files -quiet ${design_name}.bd] ne "" } {
    # USE CASES: 
    # 6) Current opened design, has components, but diff names, design_name 
    #    exists in project.
    # 7) No opened design, design_name exists in project.
    set errMsg "Design <$design_name> already exists in your project, please \
      set the variable <design_name> to another value."
    set nRet 2
  } else {
    # USE CASES:
    #    8) No opened design, design_name not in project.
    #    9) Current opened design, has components, but diff names, design_name 
    #       not in project.
    common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design \
      <$design_name> in project, so creating one..."

    create_bd_design $design_name

    common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as \
      current_bd_design."
    current_bd_design $design_name
  }

  return [list $cur_design $design_name $errMsg $nRet]
}
