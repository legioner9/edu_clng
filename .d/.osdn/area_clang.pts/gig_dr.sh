#!/bin/bash

fn_16079_28634() {

	local pth_to_gig_sh_fn_16079_28634="${HOME}/edu_clng/.d/.osdn/area_clang.pts/gig_dr.sh"
	local sgn_fn_16079_28634="${pth_to_gig_sh_fn_16079_28634}"

	if [[ -z ${pth_to_gig_sh_fn_16079_28634} ]]; then
		echo -e "${ECHO_RET1}in file://$fl_pth_fn_11604_520 , line=${LINENO}  pth_to_gig_sh_fn NOT_DEFINE, return 1${NRM}" >&2
		return 1
	fi

	if [[ ! -f ${pth_to_gig_sh_fn_16079_28634} ]]; then
		echo -e "${ECHO_RET1}in file://$fl_pth_fn_11604_520 , line=${LINENO}  $pth_to_gig_sh_fn_16079_28634 NOT_FILE, return 1${NRM}" >&2
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

	local fl_pth_fn_16079_28634="${pth_to_gig_sh_fn_16079_28634}"
	local dr_pth_fn_16079_28634=$(dirname ${pth_to_gig_sh_fn_16079_28634})
	local fl_nm_fn_16079_28634=$(basename ${pth_to_gig_sh_fn_16079_28634})

	# l_02_fs2f ins.f {{body}} rcv.f
	# {{body}}

	local arg1_16079_28634="$1"
	local arg2_16079_28634="$2"
	local arg3_16079_28634="$3"
	local arg4_16079_28634="$4"

	sgn_fn_16079_28634=". $fl_pth_fn_16079_28634 ${arg1_16079_28634} ${arg2_16079_28634} ${arg3_16079_28634} ${arg4_16079_28634}"

	if [[ -z "${arg2_16079_28634}" ]]; then
		echo -e "${ECHO_RET1}in file://$fl_pth_fn_16079_28634 , line=${LINENO}  ARG2_ISEMPTY, return 1${NRM}" >&2
		return 1
	fi

	if [[ ! -f ${arg2_16079_28634} ]]; then

		echo -e "${ECHO_RET1}in file://$fl_pth_fn_16079_28634 , line=${LINENO} [[that insert file]] ARG2_NOTFILE::${arg2_16079_28634}, return 1${NRM}" >&2
		return 1

	fi

	cd ${dr_pth_fn_16079_28634} || return 1

	if [[ -z "${arg1_16079_28634}" ]]; then

		echo -e "${ECHO_RET1}in file://$fl_pth_fn_16079_28634 , line=${LINENO}  ARGS1_nm_dr is empty, return 1${NRM}" >&2
		return 1

	fi

	# local result_dr="${dr_pth_fn_16079_28634}/${arg1_16079_28634}"

	#! ptr_path
	local result_dr="${arg1_16079_28634}"
	result_dr="$(l_01_abs_path "$(pwd)" "result_dr")"

	if [[ -d "${result_dr}" ]]; then

		echo -e "${ECHO_RET1}in file://$fl_pth_fn_16079_28634 , line=${LINENO}  ${arg1_16079_28634} IS_DIR, return 1${NRM}" >&2
		return 1

	fi
	mkdir -pv ${result_dr} || return 1
	echo "cp -r ${dr_pth_fn_16079_28634}/_.d ${result_dr}"
	cp -rv ${dr_pth_fn_16079_28634}/_.d ${result_dr} || return 1

	echo "cp -r ${dr_pth_fn_16079_28634}/_.f.d ${result_dr}"
	cp -rv ${dr_pth_fn_16079_28634}/_.f.d ${result_dr} || return 1

	if [[ -n "${arg3_16079_28634}" ]]; then

		echo "main.c -> ${arg3_16079_28634} as arg3"
		mv ${result_dr}/_.d/main.c ${result_dr}/_.d/${arg3_16079_28634}

		# l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3
		l_02_s2f "main.c" ${arg3_16079_28634} ${result_dr}/_.d/makefile
		# l_02_fs2f ins.f {{body}} rcv.f
		l_02_fs2f "${HOME}/aer_foe/.d/.frp/make_008.frp/_hint.clng/hint" {{hint}} ${result_dr}/_.d/${arg3_16079_28634}

	fi

	lfoe_gig_sh ${result_dr} start.sh

	# l_02_fs2f ins.f {{body}} rcv.f

	l_02_fs2f "${arg2_16079_28634}" {{body}} ${result_dr}/start.sh

	echo "file.sh :: ${result_dr}/start.sh"

	echo >>${result_dr}/start.sh
	echo "#DATE :: $(date)"
	echo "#DATE :: $(date)" >>${result_dr}/start.sh

	echo "#SGN :: #$sgn_fn_16079_28634"
	echo "#SGN :: $sgn_fn_16079_28634" >>${result_dr}/start.sh

	lfoe_path_to_var ${result_dr}/start.sh

	cd ${result_dr} || return 1

	touch ${result_dr}/__.nm
	echo '#'>> ${result_dr}/readme.man

	. start.sh

	# cd ${result_dr} || return 1

	# ./hello.exe

	return 0

}

fn_16079_28634 $@

#DATE :: Пн 08 июн 2026 22:36:11 +07
#SGN :: . ${HOME}/aer_foe/.d/.frp/make_008.frp/frp2dr.sh ${HOME}/edu_clng/.d/.osdn/area_clang.pts
