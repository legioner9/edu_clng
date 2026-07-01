#!/bin/bash

fn_153_21569() {

	local fl_pth_fn_153_21569="${HOME}/edu_clng/.d/.osdn/ora_c.pts/007_R_primat_org/001_scanf_printf_v1/start.sh"
	local dr_pth_fn_153_21569=$(dirname ${HOME}/edu_clng/.d/.osdn/ora_c.pts/007_R_primat_org/001_scanf_printf_v1/start.sh)
	local fl_nm_fn_153_21569=$(basename ${HOME}/edu_clng/.d/.osdn/ora_c.pts/007_R_primat_org/001_scanf_printf_v1/start.sh)
	local rnd=153_21569

	# [[ -z "$1" ]] && {
	#     # snp "out_err"
	#     echo -e "${ECHO_RET1}in file://$fn_nm_fn_153_21569 , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
	#     return 1
	# }

	[[ "$1" == "-h" ]] && {
		echo -e "
        this -h for fl_pth_fn_$rnd ::
        doing :: 
			build {nm_bin_fl} and
				\$1 choice ::  
						{cxe} - start .bin/{nm_bin_fl} without args
						tst - start _.d/.tst/start_this_tst.sh
						{nm} - start _.d/.prc/{nm}.sh 
						exa use ::
						far use ::
        "
		return 0
	}

	local arg_1_fn_153_21569="$1"
	local arg_2_fn_153_21569="$2"
	local arg_3_fn_153_21569="$3"

	# [[ -z "$2" ]] && {
	# 	# snp "out_err"
	# 	echo -e "${ECHO_RET1}in file://$fn_nm_fn_153_21569 , line=${LINENO} :: ARG_2_NOT_DEFINE is ..., return 1${NRM}" >&2
	# 	return 1
	# }

	#! ptr_path
	# local ptr_path_1="$arg_1_fn_153_21569"
	# ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"

	# l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
	# l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3
	# lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
	# lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

	# cd ${dr_pth_fn_153_21569} || return 1
	# local dr_1_fn_153_21569=${dr_pth_fn_153_21569}/${arg_1_fn_153_21569}
	# local fl_1_fn_153_21569=${dr_pth_fn_153_21569}/${arg_1_fn_153_21569}
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
	if [[ "cxe" == $(eval echo \$arg_1_fn_${rnd}) ]]; then
		l_00_echo_code "./hello.cxe"
		./hello.cxe
		# echo

		# l_00_echo_code "echo \$?"
		echo $?
	else
		l_00_echo_warn "\$1 == '$(eval echo \$arg_1_fn_${rnd})' BUT_NOT 'cxe' bin file not exec"
	fi

	eval "local bin_fl=\$(l_01_prs_f -n \${fl_nm_fn_${rnd}})"

	rm -fr .bin
	mkdir .bin
	cp -fv hello.cxe .bin/${cfn_nm}

	# __PATH=${PATH}

	# eval "export PATH=\$PATH:\${dr_pth_fn_${rnd}}/_.d/.bin"
	# l_00_echo_code ${cfn_nm}
	# ${cfn_nm}

	if [[ -n "$(eval echo \$arg_1_fn_${rnd})" ]]; then

		if [[ "tst" == $(eval echo \$arg_1_fn_${rnd}) ]]; then
			l_00_echo_code ". ${dr_pth_fn_in}/.tst/start_this_tst.sh"
			. $dr_pth_fn_in/.tst/start_this_tst.sh
			return 0
		fi

		if [[ -f ${dr_pth_fn_in}/.prc/$(eval echo \$arg_1_fn_${rnd}).sh ]]; then
			echo ". ${dr_pth_fn_in}/.prc/$(eval echo \$arg_1_fn_${rnd}).sh"
			. ${dr_pth_fn_in}/.prc/$(eval echo \$arg_1_fn_${rnd}).sh
			return 0
		fi

		l_00_echo_warn "\$1 == '$(eval echo \$arg_1_fn_${rnd})' BUT_NOT 'tst' or fl .prc/'{nm}'.sh "

	fi

	# l_00_echo_info "\${PATH}=${PATH}"
	# PATH=$(getconf PATH)
	# l_00_echo_info "\${PATH}=${PATH}"
	return 0

}

fn_153_21569 $@
#DATE :: Ср 01 июл 2026 18:56:23 +07
#SGN :: . ${HOME}/edu_clng/.d/.osdn/ora_c.pts/.frm.14.v3/gig_dr.sh ${HOME}/edu_clng/.d/.osdn/ora_c.pts/007_R_primat_org/001_scanf_printf_v1 001_scanf_printf_v1.c
