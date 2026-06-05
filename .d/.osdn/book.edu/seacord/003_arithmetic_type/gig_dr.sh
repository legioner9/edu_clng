#!/bin/bash

fn_5913_23776() {

	local pth_to_gig_sh_fn_5913_23776="${HOME}/edu_clng/.d/.osdn/book.edu/seacord/003_arithmetic_type/gig_dr.sh"
	local sgn_fn_5913_23776="${pth_to_gig_sh_fn_5913_23776}"

	if [[ -z ${pth_to_gig_sh_fn_5913_23776} ]]; then
		echo -e "${ECHO_RET1}in file://$fl_pth_fn_11604_520 , line=${LINENO}  pth_to_gig_sh_fn NOT_DEFINE, return 1${NRM}" >&2
		return 1
	fi

	if [[ ! -f ${pth_to_gig_sh_fn_5913_23776} ]]; then
		echo -e "${ECHO_RET1}in file://$fl_pth_fn_11604_520 , line=${LINENO}  $pth_to_gig_sh_fn_5913_23776 NOT_FILE, return 1${NRM}" >&2
		return 1
	fi

	[[ "$1" == "-h" ]] && {
		echo -e "
    :
        this -h for ${HOME}/edu_lnx/.d/.osdn/utils/make.d/gig_dr.sh ::
        doing :: create dir cpy _.d with dr_pth=\$1 [[usually rel_pth/00N]]
            and ins_file=\$2 [[!!unix style pth]] use l_02_fs2f() in start.sh generate in dr_nm
            use lfoe_gig_sh()
            \$3 :: mv main.c -> \$3 

            exa use gig :: . 'c:/Users/ProNout/aer_foe/.d/.frp/make_008.frp/gig_dr.sh' 001 /c/Users/ProNout/aer_foe/.d/.frp/make_008.frp/_.f.d/_.f.001 file.c
            far use :: . /c/Users/ProNout/aer_foe/.d/.frp/make_008.frp/001/start.sh

        "
		return 0
	}

	local fl_pth_fn_5913_23776="${pth_to_gig_sh_fn_5913_23776}"
	local dr_pth_fn_5913_23776=$(dirname ${pth_to_gig_sh_fn_5913_23776})
	local fl_nm_fn_5913_23776=$(basename ${pth_to_gig_sh_fn_5913_23776})

	# l_02_fs2f ins.f {{body}} rcv.f
	# {{body}}

	local arg1_5913_23776="$1"
	local arg2_5913_23776="$2"
	local arg3_5913_23776="$3"
	local arg4_5913_23776="$4"

	sgn_fn_5913_23776=". $fl_pth_fn_5913_23776 ${arg1_5913_23776} ${arg2_5913_23776} ${arg3_5913_23776} ${arg4_5913_23776}"

	if [[ -z "${arg2_5913_23776}" ]]; then
		echo -e "${ECHO_RET1}in file://$fl_pth_fn_5913_23776 , line=${LINENO}  ARG2_ISEMPTY, return 1${NRM}" >&2
		return 1
	fi

	if [[ ! -f ${arg2_5913_23776} ]]; then

		echo -e "${ECHO_RET1}in file://$fl_pth_fn_5913_23776 , line=${LINENO} [[that insert file]] ARG2_NOTFILE::${arg2_5913_23776}, return 1${NRM}" >&2
		return 1

	fi

	cd ${dr_pth_fn_5913_23776} || return 1

	if [[ -z "${arg1_5913_23776}" ]]; then

		echo -e "${ECHO_RET1}in file://$fl_pth_fn_5913_23776 , line=${LINENO}  ARGS1_nm_dr is empty, return 1${NRM}" >&2
		return 1

	fi

	# local result_dr="${dr_pth_fn_5913_23776}/${arg1_5913_23776}"

	#! ptr_path
	local result_dr="${arg1_5913_23776}"
	result_dr="$(l_01_abs_path "$(pwd)" "result_dr")"

	if [[ -d "${result_dr}" ]]; then

		echo -e "${ECHO_RET1}in file://$fl_pth_fn_5913_23776 , line=${LINENO}  ${arg1_5913_23776} IS_DIR, return 1${NRM}" >&2
		return 1

	fi
	mkdir -pv ${result_dr} || return 1
	echo "cp -r ${dr_pth_fn_5913_23776}/_.d ${result_dr}"
	cp -rv ${dr_pth_fn_5913_23776}/_.d ${result_dr} || return 1

	echo "cp -r ${dr_pth_fn_5913_23776}/_.f.d ${result_dr}"
	cp -rv ${dr_pth_fn_5913_23776}/_.f.d ${result_dr} || return 1

	if [[ -n "${arg3_5913_23776}" ]]; then

		echo "main.c -> ${arg3_5913_23776} as arg3"
		mv ${result_dr}/_.d/main.c ${result_dr}/_.d/${arg3_5913_23776}

		# l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3
		l_02_s2f "main.c" ${arg3_5913_23776} ${result_dr}/_.d/makefile
		# l_02_fs2f ins.f {{body}} rcv.f
		l_02_fs2f "${HOME}/aer_foe/.d/.frp/make_008.frp/_hint.clng/hint" {{hint}} ${result_dr}/_.d/${arg3_5913_23776}

	fi

	lfoe_gig_sh ${result_dr} start.sh

	# l_02_fs2f ins.f {{body}} rcv.f

	l_02_fs2f "${arg2_5913_23776}" {{body}} ${result_dr}/start.sh

	echo "file.sh :: ${result_dr}/start.sh"

	echo >>${result_dr}/start.sh
	echo "#DATE :: $(date)"
	echo "#DATE :: $(date)" >>${result_dr}/start.sh

	echo "#SGN :: #$sgn_fn_5913_23776"
	echo "#SGN :: $sgn_fn_5913_23776" >>${result_dr}/start.sh

	lfoe_path_to_var ${result_dr}/start.sh

	cd ${result_dr} || return 1

	touch ${result_dr}/__.nm
	echo '#'>> ${result_dr}/readme.man

	. start.sh

	# cd ${result_dr} || return 1

	# ./hello.exe

	return 0

}

fn_5913_23776 $@

#DATE :: Пт 05 июн 2026 19:28:00 +07
#SGN :: . ${HOME}/aer_foe/.d/.frp/make_008.frp/frp2dr.sh ${HOME}/edu_clng/.d/.osdn/book.edu/seacord/003_arithmetic_type
