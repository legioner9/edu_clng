#!/bin/bash

fn_22766_17951(){

    local fl_pth_fn_22766_17951="${HOME}/edu_clng/.d/.crl/edu_clang_c.crl.d/edu_clang_c.crl.crd/cIN1s_edu_clang_c.fn/001/start.sh"
    local dr_pth_fn_22766_17951=$(dirname ${HOME}/edu_clng/.d/.crl/edu_clang_c.crl.d/edu_clang_c.crl.crd/cIN1s_edu_clang_c.fn/001/start.sh)
    local fl_nm_fn_22766_17951=$(basename ${HOME}/edu_clng/.d/.crl/edu_clang_c.crl.d/edu_clang_c.crl.crd/cIN1s_edu_clang_c.fn/001/start.sh)
    local rnd=22766_17951

    # [[ -z "$1" ]] && {
    #     # snp "out_err"
    #     echo -e "${ECHO_RET1}in file://$fn_nm_fn_22766_17951 , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
    #     return 1
    # }

    [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl_pth_fn_22766_17951 ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }

    local arg_1_fn_22766_17951="$1"
    local arg_2_fn_22766_17951="$2"
    local arg_3_fn_22766_17951="$3"

	# [[ -z "$2" ]] && {
	# 	# snp "out_err"
	# 	echo -e "${ECHO_RET1}in file://$fn_nm_fn_22766_17951 , line=${LINENO} :: ARG_2_NOT_DEFINE is ..., return 1${NRM}" >&2
	# 	return 1
	# }

	#! ptr_path
	# local ptr_path_1="$arg_1_fn_22766_17951"
	# ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

    # cd ${dr_pth_fn_22766_17951} || return 1
    # local dr_1_fn_22766_17951=${dr_pth_fn_22766_17951}/${arg_1_fn_22766_17951}
    # local fl_1_fn_22766_17951=${dr_pth_fn_22766_17951}/${arg_1_fn_22766_17951}
    # contane {\fn_nm\} {{body}}
	eval "local dr_pth_fn_in=\${dr_pth_fn_${rnd}}/_.d"

	l_00_echo_code "\$dr_pth_fn_in=$dr_pth_fn_in"

	local fn_c_dr=$(realpath ${dr_pth_fn_in}/../../)
	l_00_echo_code "\$fn_c_dr=$fn_c_dr"

	local cfn_nm=$(l_01_prs_f -n $fn_c_dr)
	l_00_echo_code "\$cfn_nm=$cfn_nm"

	cd ${dr_pth_fn_in} || return 1

	make clean
	make hello
	# make hello_gdb

	./hello.cxe
	# echo $?

	eval "local bin_fl=\$(l_01_prs_f -n \${fl_nm_fn_${rnd}})"

	rm -fr .bin
	mkdir .bin
	cp -fv hello.cxe .bin/${cfn_nm}

	# __PATH=${PATH}

	# eval "export PATH=\$PATH:\${dr_pth_fn_${rnd}}/_.d/.bin"
	# l_00_echo_code ${cfn_nm}
	# ${cfn_nm}

	l_00_echo_code ". ${dr_pth_fn_in}/.tst/start_this_tst.sh"
	. $dr_pth_fn_in/.tst/start_this_tst.sh

	# l_00_echo_info "\${PATH}=${PATH}"
	# PATH=$(getconf PATH)
	# l_00_echo_info "\${PATH}=${PATH}"
    return 0

}

fn_22766_17951 $@
#DATE :: Вс 14 июн 2026 11:22:24 +07
#SGN :: . ${HOME}/edu_clng/.d/.crl/edu_clang_c.crl.d/edu_clang_c.crl.crd/.fri.14/gig_dr.sh ${HOME}/edu_clng/.d/.crl/edu_clang_c.crl.d/edu_clang_c.crl.crd/cIN1s_edu_clang_c.fn/001 cIN1s_edu_clang_c.c 
