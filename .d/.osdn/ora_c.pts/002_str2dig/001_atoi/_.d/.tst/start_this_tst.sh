#!/bin/bash

fn_24636_7534(){

    local fl_pth_fn_24636_7534="${HOME}/edu_clng/.d/.osdn/ora_c.pts/002_str2dig/001_atoi/_.d/.tst/start_this_tst.sh"
    local dr_pth_fn_24636_7534=$(dirname ${HOME}/edu_clng/.d/.osdn/ora_c.pts/002_str2dig/001_atoi/_.d/.tst/start_this_tst.sh)
    local fl_nm_fn_24636_7534=$(basename ${HOME}/edu_clng/.d/.osdn/ora_c.pts/002_str2dig/001_atoi/_.d/.tst/start_this_tst.sh)
    local rnd=24636_7534

    # [[ -z "$1" ]] && {
    #     # snp "out_err"
    #     echo -e "${ECHO_RET1}in file://$fn_nm_fn_24636_7534 , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
    #     return 1
    # }

    [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl_pth_fn_24636_7534 ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }

    local arg_1_fn_24636_7534="$1"
    local arg_2_fn_24636_7534="$2"
    local arg_3_fn_24636_7534="$3"

	# [[ -z "$2" ]] && {
	# 	# snp "out_err"
	# 	echo -e "${ECHO_RET1}in file://$fn_nm_fn_24636_7534 , line=${LINENO} :: ARG_2_NOT_DEFINE is ..., return 1${NRM}" >&2
	# 	return 1
	# }

	#! ptr_path
	# local ptr_path_1="$arg_1_fn_24636_7534"
	# ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

    # cd ${dr_pth_fn_24636_7534} || return 1
    # local dr_1_fn_24636_7534=${dr_pth_fn_24636_7534}/${arg_1_fn_24636_7534}
    # local fl_1_fn_24636_7534=${dr_pth_fn_24636_7534}/${arg_1_fn_24636_7534}
    # contane {\fn_nm\} {{body}}
	eval "local nn_dr=\${dr_pth_fn_${rnd}}/../../"

	cd ${nn_dr} || return 1

	# . ${nn_dr}/start.sh

	if . ${nn_dr}/_.d/.tst/flow1.tst.d/flow1.tst; then
		return 0
	else
		return 1
	fi
    return 0

}

fn_24636_7534 $@