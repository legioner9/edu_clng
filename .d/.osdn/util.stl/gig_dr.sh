#!/bin/bash

fn_20366_24301() {

	local pth_to_gig_sh_fn_20366_24301="${HOME}/edu_clng/.d/.osdn/util.stl/gig_dr.sh"

	if [[ -z ${pth_to_gig_sh_fn_20366_24301} ]]; then
		echo -e "${ECHO_RET1}in file://$fl_pth_fn_11604_520 , line=${LINENO}  pth_to_gig_sh_fn NOT_DEFINE, return 1${NRM}" >&2
		return 1
	fi

	if [[ ! -f ${pth_to_gig_sh_fn_20366_24301} ]]; then
		echo -e "${ECHO_RET1}in file://$fl_pth_fn_11604_520 , line=${LINENO}  $pth_to_gig_sh_fn_20366_24301 NOT_FILE, return 1${NRM}" >&2
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

	local fl_pth_fn_20366_24301="${pth_to_gig_sh_fn_20366_24301}"
	local dr_pth_fn_20366_24301=$(dirname ${pth_to_gig_sh_fn_20366_24301})
	local fl_nm_fn_20366_24301=$(basename ${pth_to_gig_sh_fn_20366_24301})

	# l_02_fs2f ins.f {{body}} rcv.f
	# {{body}}

	local arg1_20366_24301="$1"
	local arg2_20366_24301="$2"
	local arg3_20366_24301="$3"

	if [[ -z "${arg2_20366_24301}" ]]; then
		echo -e "${ECHO_RET1}in file://$fl_pth_fn_20366_24301 , line=${LINENO}  ARG2_ISEMPTY, return 1${NRM}" >&2
		return 1
	fi

	if [[ ! -f ${arg2_20366_24301} ]]; then

		echo -e "${ECHO_RET1}in file://$fl_pth_fn_20366_24301 , line=${LINENO} [[that insert file]] ARG2_NOTFILE::${arg2_20366_24301}, return 1${NRM}" >&2
		return 1

	fi

	cd ${dr_pth_fn_20366_24301} || return 1

	if [[ -z "${arg1_20366_24301}" ]]; then

		echo -e "${ECHO_RET1}in file://$fl_pth_fn_20366_24301 , line=${LINENO}  ARGS1_nm_dr is empty, return 1${NRM}" >&2
		return 1

	fi

	# local result_dr="${dr_pth_fn_20366_24301}/${arg1_20366_24301}"

	#! ptr_path
	local result_dr="${arg1_20366_24301}"
	result_dr="$(l_01_abs_path "$(pwd)" "result_dr")"

	if [[ -d "${result_dr}" ]]; then

		echo -e "${ECHO_RET1}in file://$fl_pth_fn_20366_24301 , line=${LINENO}  ${arg1_20366_24301} IS_DIR, return 1${NRM}" >&2
		return 1

	fi
	mkdir -pv ${result_dr} || return 1
	echo "cp -r ${dr_pth_fn_20366_24301}/_.d ${result_dr}"
	cp -rv ${dr_pth_fn_20366_24301}/_.d ${result_dr} || return 1

	echo "cp -r ${dr_pth_fn_20366_24301}/_.f.d ${result_dr}"
	cp -rv ${dr_pth_fn_20366_24301}/_.f.d ${result_dr} || return 1

	if [[ -n "${arg3_20366_24301}" ]]; then

		echo "main.c -> ${arg3_20366_24301} as arg3"
		mv ${result_dr}/_.d/main.c ${result_dr}/_.d/${arg3_20366_24301}

		# l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3
		l_02_s2f "main.c" ${arg3_20366_24301} ${result_dr}/_.d/makefile
		# l_02_fs2f ins.f {{body}} rcv.f
		l_02_fs2f "${HOME}/aer_foe/.d/.frp/make_008.frp/_hint.clng/hint" {{hint}} ${result_dr}/_.d/${arg3_20366_24301}

	fi

	lfoe_gig_sh ${result_dr} start.sh

	# l_02_fs2f ins.f {{body}} rcv.f

	l_02_fs2f "${arg2_20366_24301}" {{body}} ${result_dr}/start.sh

	cd ${result_dr} || return 1

	. start.sh

	# cd ${result_dr} || return 1

	# ./hello.exe

	return 0

}

fn_20366_24301 $@
