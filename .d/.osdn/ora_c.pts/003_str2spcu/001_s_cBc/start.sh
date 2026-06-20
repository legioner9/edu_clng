#!/bin/bash

fn_19857_30791(){

    local fl_pth_fn_19857_30791="${HOME}/edu_clng/.d/.osdn/ora_c.pts/003_str2spcu/001_s_cBc/start.sh"
    local dr_pth_fn_19857_30791=$(dirname ${HOME}/edu_clng/.d/.osdn/ora_c.pts/003_str2spcu/001_s_cBc/start.sh)
    local fl_nm_fn_19857_30791=$(basename ${HOME}/edu_clng/.d/.osdn/ora_c.pts/003_str2spcu/001_s_cBc/start.sh)
    local rnd=19857_30791

    # [[ -z "$1" ]] && {
    #     # snp "out_err"
    #     echo -e "${ECHO_RET1}in file://$fn_nm_fn_19857_30791 , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
    #     return 1
    # }

    [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl_pth_fn_19857_30791 ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }

    local arg_1_fn_19857_30791="$1"
    local arg_2_fn_19857_30791="$2"
    local arg_3_fn_19857_30791="$3"

	# [[ -z "$2" ]] && {
	# 	# snp "out_err"
	# 	echo -e "${ECHO_RET1}in file://$fn_nm_fn_19857_30791 , line=${LINENO} :: ARG_2_NOT_DEFINE is ..., return 1${NRM}" >&2
	# 	return 1
	# }

	#! ptr_path
	# local ptr_path_1="$arg_1_fn_19857_30791"
	# ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

    # cd ${dr_pth_fn_19857_30791} || return 1
    # local dr_1_fn_19857_30791=${dr_pth_fn_19857_30791}/${arg_1_fn_19857_30791}
    # local fl_1_fn_19857_30791=${dr_pth_fn_19857_30791}/${arg_1_fn_19857_30791}
    # contane {\fn_nm\} {{body}}
	eval "local dr_pth_fn_in=\${dr_pth_fn_${rnd}}/_.d"

	l_00_echo_info "\$dr_pth_fn_in=$dr_pth_fn_in"

	local fn_c_dr=$(realpath ${dr_pth_fn_in}/../../)
	l_00_echo_info "\$fn_c_dr=$fn_c_dr"

	local cfn_nm=$(l_01_prs_f -n $fn_c_dr)
	l_00_echo_info "\$cfn_nm=$cfn_nm"

	cd ${dr_pth_fn_in} || return 1

	make clean
	make hello
	# make hello_gdb

	l_00_echo_code "./hello.cxe"
	./hello.cxe
	echo

	l_00_echo_code "echo \$?"
	echo $?

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

fn_19857_30791 $@
#DATE :: Сб 20 июн 2026 11:51:10 +07
#SGN :: . ${HOME}/edu_clng/.d/.osdn/ora_c.pts/.frm.14.v2/gig_dr.sh ${HOME}/edu_clng/.d/.osdn/ora_c.pts/003_str2spcu/001_s_cBc 001_s_cBc.c 
