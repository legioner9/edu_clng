#!/bin/bash

fn_13390_7193() {

	local pth_to_gig_sh_fn_13390_7193="${HOME}/edu_clng/.d/.crl/edu_clang_c.crl.d/edu_clang_c.crl.crd/.fri.13/gig_dr.sh"
	local sgn_fn_13390_7193="${pth_to_gig_sh_fn_13390_7193}"

	if [[ -z ${pth_to_gig_sh_fn_13390_7193} ]]; then
		echo -e "${ECHO_RET1}in file://$fl_pth_fn_11604_520 , line=${LINENO}  pth_to_gig_sh_fn NOT_DEFINE, return 1${NRM}" >&2
		return 1
	fi

	if [[ ! -f ${pth_to_gig_sh_fn_13390_7193} ]]; then
		echo -e "${ECHO_RET1}in file://$fl_pth_fn_11604_520 , line=${LINENO}  $pth_to_gig_sh_fn_13390_7193 NOT_FILE, return 1${NRM}" >&2
		return 1
	fi

	[[ "$1" == "-h" ]] && {
		echo -e "
    :
        this -h for ${HOME}/edu_lnx/.d/.osdn/utils/make.d/gig_dr.sh ::
        doing :: create dir cpy _.d with dr_pth=\$1 [[usually rel_pth/00N]]
            and dr_with_ins_fl=\$2 [[!!unix style pth]] use l_02_fs2f() in start.sh generate in dr_nm
				nm_fl1.ins
				nm_fl2.ins
				nm_fl3.ins
            use lfoe_gig_sh()
            \$3 :: mv main.c -> \$3

            exa use gig :: . 'c:/Users/ProNout/aer_foe/.d/.frp/make_009.frp/gig_dr.sh' 001 /c/Users/ProNout/aer_foe/.d/.frp/make_009.frp/_.f.d/_.f.001 file.c
            far use :: . /c/Users/ProNout/aer_foe/.d/.frp/make_009.frp/001/start.sh

        "
		return 0
	}

	local fl_pth_fn_13390_7193="${pth_to_gig_sh_fn_13390_7193}"
	local dr_pth_fn_13390_7193=$(dirname ${pth_to_gig_sh_fn_13390_7193})
	local fl_nm_fn_13390_7193=$(basename ${pth_to_gig_sh_fn_13390_7193})

	# l_02_fs2f ins.f {{body}} rcv.f
	# {{body}}

	local arg1_13390_7193="$1"
	local arg2_13390_7193="$2"
	local arg3_13390_7193="$3"
	local arg4_13390_7193="$4"

	sgn_fn_13390_7193=". $fl_pth_fn_13390_7193 ${arg1_13390_7193} ${arg2_13390_7193} ${arg3_13390_7193} ${arg4_13390_7193}"

	if [[ -z "${arg2_13390_7193}" ]]; then
		echo -e "${ECHO_RET1}in file://$fl_pth_fn_13390_7193 , line=${LINENO}  ARG2_ISEMPTY, return 1${NRM}" >&2
		return 1
	fi

	if [[ ! -d ${arg2_13390_7193} ]]; then

		echo -e "${ECHO_RET1}in file://$fl_pth_fn_13390_7193 , line=${LINENO} [[that insert file]] ARG2_NOTDIR::${arg2_13390_7193}, return 1${NRM}" >&2
		return 1

	fi

	cd ${dr_pth_fn_13390_7193} || return 1

	if [[ -z "${arg1_13390_7193}" ]]; then

		echo -e "${ECHO_RET1}in file://$fl_pth_fn_13390_7193 , line=${LINENO}  ARGS1_nm_dr is empty, return 1${NRM}" >&2
		return 1

	fi

	# local result_dr="${dr_pth_fn_13390_7193}/${arg1_13390_7193}"

	#! ptr_path
	local result_dr="${arg1_13390_7193}"
	result_dr="$(l_01_abs_path "$(pwd)" "result_dr")"

	if [[ -d "${result_dr}" ]]; then

		echo -e "${ECHO_RET1}in file://$fl_pth_fn_13390_7193 , line=${LINENO}  ${arg1_13390_7193} IS_DIR, return 1${NRM}" >&2
		return 1

	fi
	mkdir -pv ${result_dr} || return 1
	echo "cp -r ${dr_pth_fn_13390_7193}/_.d ${result_dr}"
	cp -rv ${dr_pth_fn_13390_7193}/_.d ${result_dr} || return 1

	echo "cp -r ${dr_pth_fn_13390_7193}/_.f.d ${result_dr}"
	cp -rv ${dr_pth_fn_13390_7193}/_.f.d ${result_dr} || return 1

	if [[ -n "${arg3_13390_7193}" ]]; then

		echo "main.c -> ${arg3_13390_7193} as arg3"
		mv ${result_dr}/_.d/main.c ${result_dr}/_.d/${arg3_13390_7193}

		# l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3
		l_02_s2f "main.c" ${arg3_13390_7193} ${result_dr}/_.d/makefile
		# l_02_fs2f ins.f {{body}} rcv.f
		l_02_fs2f "${HOME}/edu_clng/.d/.osdn/.hnt/clang.body.hnt" {{hint}} ${result_dr}/_.d/${arg3_13390_7193}

	fi

	lfoe_gig_sh ${result_dr} start.sh

	# l_02_fs2f ins.f {{body}} rcv.f

	l_02_fs2f "${arg2_13390_7193}"/start.ins {{body}} ${result_dr}/start.sh

	echo "file.sh :: ${result_dr}/start.sh"

	echo >>${result_dr}/start.sh
	echo "#DATE :: $(date)"
	echo "#DATE :: $(date)" >>${result_dr}/start.sh

	echo "#SGN :: #$sgn_fn_13390_7193"
	echo "#SGN :: $sgn_fn_13390_7193" >>${result_dr}/start.sh

	lfoe_path_to_var ${result_dr}/start.sh

	#! insert pth into makefile START
	local makefile_fl=${result_dr}/_.d/makefile
	local result_dr_d=${result_dr}/_.d
	file ${makefile_fl}
	echo "result_dr_d = ${result_dr_d}"

	l_02_s2f {{result_dr_d}} ${result_dr_d} ${makefile_fl}
	l_02_fs2f "${HOME}/edu_clng/.d/.osdn/.hnt/makefile.body.hnt" {{hint}} ${result_dr}/_.d/makefile
	lfoe_path_to_var ${makefile_fl}
	#! insert pth into makefile END

	cd ${result_dr} || return 1

	touch ${result_dr}/__.nm
	echo '#' >>${result_dr}/readme.man

	#! add tst flow
	lfoe_gig_sh ${result_dr_d}/.tst start_this_tst.sh
	l_02_fs2f "${arg2_13390_7193}"/start_this_tst.ins {{body}} ${result_dr_d}/.tst/start_this_tst.sh

	l_02_fs2f "${arg2_13390_7193}"/flow1.tst.ins {{body}} ${result_dr_d}/.tst/flow1.tst.d/flow1.tst

	#! end
	
	cd ${result_dr} || return 1
	. start.sh

	. ${result_dr_d}/.tst/start_this_tst.sh
	# cd ${result_dr} || return 1

	# ./hello.exe

	return 0

}

fn_13390_7193 $@

#DATE :: Сб 13 июн 2026 12:16:43 +07
#SGN :: . ${HOME}/aer_foe/.d/.frp/make_013.frp/frp2dr.sh ${HOME}/edu_clng/.d/.crl/edu_clang_c.crl.d/edu_clang_c.crl.crd/.fri.13
