#!/bin/bash

fn_28935_32401() {

	local fl_pth_fn_28935_32401="${HOME}/edu_clng/.d/.osdn/ora_c.pts/bn.this/bn.sh"
	local dr_pth_fn_28935_32401=$(dirname ${HOME}/edu_clng/.d/.osdn/ora_c.pts/bn.this/bn.sh)
	local fl_nm_fn_28935_32401=$(basename ${HOME}/edu_clng/.d/.osdn/ora_c.pts/bn.this/bn.sh)
	local rnd=28935_32401

	# [[ -z "$1" ]] && {
	#     # snp "out_err"
	#     echo -e "${ECHO_RET1}in file://$fn_nm_fn_28935_32401 , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
	#     return 1
	# }

	[[ "$1" == "-h" ]] && {
		echo -e "
        this -h for fl_pth_fn_28935_32401 ::
        doing :: 
            exa use ::
            far use ::
        "
		return 0
	}

	local arg_1_fn_28935_32401="$1"
	local arg_2_fn_28935_32401="$2"
	local arg_3_fn_28935_32401="$3"

	# [[ -z "$2" ]] && {
	# 	# snp "out_err"
	# 	echo -e "${ECHO_RET1}in file://$fn_nm_fn_28935_32401 , line=${LINENO} :: ARG_2_NOT_DEFINE is ..., return 1${NRM}" >&2
	# 	return 1
	# }

	#! ptr_path
	# local ptr_path_1="$arg_1_fn_28935_32401"
	# ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"

	# l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
	# l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3
	# lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
	# lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

	# cd ${dr_pth_fn_28935_32401} || return 1
	# local dr_1_fn_28935_32401=${dr_pth_fn_28935_32401}/${arg_1_fn_28935_32401}
	# local fl_1_fn_28935_32401=${dr_pth_fn_28935_32401}/${arg_1_fn_28935_32401}
	# contane {\fn_nm\} {{body}}

	local ora_dr=$(realpath "${dr_pth_fn_28935_32401}/..")
	# l_00_echo_info "\${ora_dr}=${ora_dr}"
	local arr_read_me_pth=($(find ${ora_dr} -type f -name readme.this.man))
	# echo ${arr_read_me_pth[@]}

	local item=
	for item in ${arr_read_me_pth[@]}; do
		# l_00_echo_info "for file://${item}"
		echo "for file://${item}"
		grep -f ${dr_pth_fn_28935_32401}/patternfile.lst ${item}

		# echo $(realpath "${item}/../_.d")
		local fn_dot_d="$(dirname ${item})/_.d"

		local item2=
		for item2 in $(find ${fn_dot_d} -type f -name *.c); do
			echo
			echo "file://${item2}\n"
			echo "---------- start program list $(basename ${item2}) ------------\n"
			echo "\`\`\`c"
			cat ${item2}
			echo
			echo "\`\`\`\n"
			echo
			echo "---------- end program list $(basename ${item2}) ------------\n"
			echo
			local doc_fl=${fn_dot_d}/.tst/flow1.tst.d/flow1.tst.doc
			cat ${doc_fl}
			echo

		done
		# /home/st/edu_clng/.d/.osdn/ora_c.pts/001_args/002_arg_is_int/_.d/.tst/flow1.tst.d/flow1.tst.doc
		# /home/st/edu_clng/.d/.osdn/ora_c.pts/001_args/002_arg_is_int/_.d/002_arg_is_int.c
		echo
	done

	return 0

}

fn_28935_32401 $@
