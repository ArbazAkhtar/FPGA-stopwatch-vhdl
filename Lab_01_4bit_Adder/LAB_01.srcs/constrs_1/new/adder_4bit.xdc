## A(3 downto 0) → SW0..SW3  (J15, L16, M13, R15)
set_property PACKAGE_PIN J15 [get_ports {A[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[0]}]

set_property PACKAGE_PIN L16 [get_ports {A[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[1]}]

set_property PACKAGE_PIN M13 [get_ports {A[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[2]}]

set_property PACKAGE_PIN R15 [get_ports {A[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[3]}]

## B(3 downto 0) → SW4..SW7  (R17, T18, U18, R13)
set_property PACKAGE_PIN R17 [get_ports {B[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]

set_property PACKAGE_PIN T18 [get_ports {B[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]

set_property PACKAGE_PIN U18 [get_ports {B[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]

set_property PACKAGE_PIN R13 [get_ports {B[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[3]}]

## C_in → SW8 (T8)
set_property PACKAGE_PIN T8 [get_ports {C_in}]
set_property IOSTANDARD LVCMOS33 [get_ports {C_in}]

## S(4 downto 0) → LD0..LD4  (H17, K15, J13, N14, R18)
set_property PACKAGE_PIN H17 [get_ports {S[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {S[0]}]

set_property PACKAGE_PIN K15 [get_ports {S[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {S[1]}]

set_property PACKAGE_PIN J13 [get_ports {S[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {S[2]}]

set_property PACKAGE_PIN N14 [get_ports {S[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {S[3]}]

set_property PACKAGE_PIN R18 [get_ports {S[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {S[4]}]

## C_out mapped to LED5 (V17)
set_property PACKAGE_PIN V17 [get_ports {C_out}]
set_property IOSTANDARD LVCMOS33 [get_ports {C_out}]

