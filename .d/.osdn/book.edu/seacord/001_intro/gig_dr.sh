#!/bin/bash

fn_27768_21492(){
    
    local pth_to_gig_sh_fn_27768_21492="${HOME}/edu_clng/.d/.osdn/book.edu/seacord/001_intro/gig_dr.sh"
    
    if [[ -z ${pth_to_gig_sh_fn_27768_21492} ]];then
        echo -e "${ECHO_RET1}in file://$fl_pth_fn_11604_520 , line=${LINENO}  pth_to_gig_sh_fn NOT_DEFINE, return 1${NRM}" >&2
        return 1
    fi
    
    if [[ ! -f ${pth_to_gig_sh_fn_27768_21492} ]];then
        echo -e "${ECHO_RET1}in file://$fl_pth_fn_11604_520 , line=${LINENO}  $pth_to_gig_sh_fn_27768_21492 NOT_FILE, return 1${NRM}" >&2
        return 1
    fi
    
    [[ "$1" == "-h" ]] && {
        echo -e "
    :
        this -h for ${HOME}/edu_lnx/.d/.osdn/utils/make.d/gig_dr.sh ::
        doing :: create dir cpy _.d with dr_nm=\$1 [[usually 00N]]
            and ins_file=\$2 [[!!unix style pth]] use l_02_fs2f() in start.sh generate in dr_nm
            use lfoe_gig_sh()
            \$3 :: mv main.c -> \$3 

            exa use gig :: . 'c:/Users/ProNout/aer_foe/.d/.frp/make_002.frp/gig_dr.sh' 001 /c/Users/ProNout/aer_foe/.d/.frp/make_002.frp/_.f.d/_.f.001 file.c
            far use :: . /c/Users/ProNout/aer_foe/.d/.frp/make_002.frp/001/start.sh

        "
        return 0
    }
    
    local fl_pth_fn_27768_21492="${pth_to_gig_sh_fn_27768_21492}"
    local dr_pth_fn_27768_21492=$(dirname ${pth_to_gig_sh_fn_27768_21492})
    local fl_nm_fn_27768_21492=$(basename ${pth_to_gig_sh_fn_27768_21492})
    
    # l_02_fs2f ins.f {{body}} rcv.f
    # {{body}}
    
    local arg1_27768_21492="$1"
    local arg2_27768_21492="$2"
    local arg3_27768_21492="$3"
    
    if [[ -z "${arg2_27768_21492}" ]];then
        echo -e "${ECHO_RET1}in file://$fl_pth_fn_27768_21492 , line=${LINENO}  ARG2_ISEMPTY, return 1${NRM}" >&2
        return 1
    fi
    
    if [[ ! -f ${arg2_27768_21492} ]];then
        
        echo -e "${ECHO_RET1}in file://$fl_pth_fn_27768_21492 , line=${LINENO} [[that insert file]] ARG2_NOTFILE::${arg2_27768_21492}, return 1${NRM}" >&2
        return 1
        
    fi
    
    cd ${dr_pth_fn_27768_21492} || return 1
    
    if [[ -z "${arg1_27768_21492}" ]] ;then
        
        echo -e "${ECHO_RET1}in file://$fl_pth_fn_27768_21492 , line=${LINENO}  ARGS1_nm_dr is empty, return 1${NRM}" >&2
        return 1
        
    fi
    
    local result_dr="${dr_pth_fn_27768_21492}/${arg1_27768_21492}"
    
    if [[ -d "${result_dr}" ]] ;then
        
        echo -e "${ECHO_RET1}in file://$fl_pth_fn_27768_21492 , line=${LINENO}  ${arg1_27768_21492} IS_DIR, return 1${NRM}" >&2
        return 1
        
    fi
    echo "cp -r ${dr_pth_fn_27768_21492}/_.d ${result_dr}"
    cp -r ${dr_pth_fn_27768_21492}/_.d ${result_dr}
    
    if [[ -n "${arg3_27768_21492}" ]];then
        
        echo "main.c -> ${arg3_27768_21492} as arg3"
        mv ${result_dr}/main.c ${result_dr}/${arg3_27768_21492}
        
        # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3
        l_02_s2f "main.c" ${arg3_27768_21492} ${result_dr}/makefile
        # l_02_fs2f ins.f {{body}} rcv.f
        l_02_fs2f "${HOME}/aer_foe/.d/.frp/make_002.frp/_hint.clng/hint" {{hint}} ${result_dr}/${arg3_27768_21492}

        
    fi
    
    lfoe_gig_sh ${result_dr} start.sh
    
    # l_02_fs2f ins.f {{body}} rcv.f
    
    l_02_fs2f "${arg2_27768_21492}" {{body}}  ${result_dr}/start.sh
    
    cd ${result_dr} || return 1
    
    . start.sh
    
    # cd ${result_dr} || return 1
    
    # ./hello.exe
    
    
    
    return 0
    
    
}

fn_27768_21492 $@