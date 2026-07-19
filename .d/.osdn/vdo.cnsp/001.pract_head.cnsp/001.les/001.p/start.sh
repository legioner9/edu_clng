#!/bin/bash

fn_14866_1223() {

	local fl_pth_fn_14866_1223="${HOME}/edu_clng/.d/.osdn/vdo.cnsp/001.pract_head.cnsp/001.les/001.p/start.sh"
	local dr_pth_fn_14866_1223=$(dirname ${HOME}/edu_clng/.d/.osdn/vdo.cnsp/001.pract_head.cnsp/001.les/001.p/start.sh)
	local fl_nm_fn_14866_1223=$(basename ${HOME}/edu_clng/.d/.osdn/vdo.cnsp/001.pract_head.cnsp/001.les/001.p/start.sh)
	local rnd=14866_1223

	eval "local prnt1_dr_pth_fn_${rnd}=\$(readlink -m \$(eval echo \"\\\$dr_pth_fn_${rnd}\")/..)"
	eval "local prnt2_dr_pth_fn_${rnd}=\$(readlink -m \$(eval echo \"\\\$dr_pth_fn_${rnd}\")/../..)"
	eval "fn_nm_${rnd}=\$(l_01_prs_f -n \$fl_nm_fn_${rnd})"

	# [[ -z "$1" ]] && {
	#     # snp "out_err"
	#     echo -e "${ECHO_RET1}in file://$fn_nm_{fn_nm} , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
	#     return 1
	# }

	[[ "$1" == "-h" ]] && {
		echo -e "
        this -h for $(eval "echo \$fl_pth_fn_${rnd}") ::
        doing :: 
			\$1 - 
			\$2 - 
			\$3 - 
            exa use ::
            far use ::
        "
		return 0
	}

	#* value indicator
	eval "local arg_1_fn_${rnd}=\"\$1\""
	eval "echo \\\$1=\$arg_1_fn_${rnd}"
	eval "local arg_2_fn_${rnd}=\"\$2\""
	eval "echo \\\$2=\$arg_2_fn_${rnd}"
	eval "local arg_3_fn_${rnd}=\"\$3\""
	eval "echo \\\$3=\$arg_3_fn_${rnd}"

	eval "echo \"fl_pth_fn=\$fl_pth_fn_${rnd}\""
	eval "echo \"dr_pth_fn=\$dr_pth_fn_${rnd}\""
	eval "echo \"fl_nm_fn=\$fl_nm_fn_${rnd}\""
	eval "echo \"prnt1_dr_pth_fn=\$prnt1_dr_pth_fn_${rnd}\""
	eval "echo \"prnt2_dr_pth_fn=\$prnt2_dr_pth_fn_${rnd}\""

	#* indicate with ${rnd}
	# eval "echo \\\$prnt_dr_${rnd}=\$prnt_dr_${rnd}"

	# [[ -z "$2" ]] && {
	# 	# snp "out_err"
	# 	echo -e "${ECHO_RET1}in file://$fn_nm_fn_2219_9919 , line=${LINENO} :: ARG_2_NOT_DEFINE is ..., return 1${NRM}" >&2
	# 	return 1
	# }

	#! ptr_path
	# eval "local ptr_path_1=\"$arg_1_fn_${rnd}\""
	# ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"
	# echo "\$ptr_path_1=$ptr_path_1"
	# eval "arg_1_fn_${rnd}=\$ptr_path_1"

	#* STANDART ENV THAT FILE
	# arg1 ::
	# $(eval "echo \$arg_1_fn_${rnd}")
	# arg2 ::
	# $(eval "echo \$arg_2_fn_${rnd}")
	# arg3 ::
	# $(eval "echo \$arg_3_fn_${rnd}")
	# fl_pth_fn ::
	# $(eval "echo \$fl_pth_fn_${rnd}")
	# dr_pth_fn ::
	# $(eval "echo \$dr_pth_fn_${rnd}")
	# fl_nm_fn ::
	# $(eval "echo \$fl_nm_fn_${rnd}")
	# prnt1_dr_pth_fn ::
	# $(eval "echo \$prnt1_dr_pth_fn_${rnd}")
	# prnt2_dr_pth_fn ::
	# $(eval "echo \$prnt2_dr_pth_fn_${rnd}")

	#* use l_ ::
	# l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
	# l_02_s2f :: reciver_string: $2 inserter_string: $1 [@ - empty string] in reciver_result_file: $3
	# lfoe_path_to_var ::  insert pth \${HOME} into string '${HOME}'
	# lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

	eval "echo \"that 1 \$fn_nm_${rnd}\""

	cd $(eval "echo \$dr_pth_fn_${rnd}")

	l_00_echo_code "make"
	make
	l_00_echo_code "make main_c"
	make main_c
	l_00_echo_code "make main_s"
	make main_s
	l_00_echo_code "make main"
	make main
	l_00_echo_code "./main.cxe ; echo \$?"
	./main.cxe
	echo $?

	# {{body}}

	return 0

}

fn_14866_1223 $@
