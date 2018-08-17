# JSONPacketParser

Uses the JSMN library to parse a JSON file into a C data structure. This data structure is then passed to a SystemVerilog testbench via DPI for testing the PR region of project Galapagos. This is a collaboration with @grahamsider.

## C Program -- Usage/Options

### Usage:

`$ [path to json_to_sv executable] [options] [path to JSON file]`

### Options:

`-v`, `--verbose` :       Show output data structure in the command line

`-l`, `--log` :           Log output data structure to outputFiles/log.txt

`-s`, `--sv` :            Log output data structure (for SystemVerilog interfacing) to outputFiles/svLog.txt

`-h`, `--help` :          Show help

## SystemVerilog Interfacing

*The sv code included in the svTestbenches folder is strictly an example*

Please refer to Galapagos (link below) to see a working implementation of the packet parser.

Uses DPI to interface the C parser with a SystemVerilog testbench. The testbench creates transactions to be sent to the simulated hardware via re-creating the struct it recieves from the parser.

## Relevant Projects

The JSMN JSON parser can be found here: https://zserge.com/jsmn.html

The Galapagos project can be found here: https://github.com/tarafdar/galapagos
