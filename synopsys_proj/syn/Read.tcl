set SRC_FILES_RTL   $env(SRC_FILES_RTL)

foreach file $SRC_FILES_RTL {
    read_verilog "$file"
}