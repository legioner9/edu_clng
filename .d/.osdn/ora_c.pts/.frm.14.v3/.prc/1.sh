#!/bin/bash

# ${dr_pth_fn_in} <> _.d
# ${cfn_nm} <> name bin fl

echo "start 1.sh"
# ${dr_pth_fn_in}
cd ${dr_pth_fn_in}/.bin/ || return 1
l_00_echo_code ".${dr_pth_fn_in}/.bin/${cfn_nm}"
./${cfn_nm}
