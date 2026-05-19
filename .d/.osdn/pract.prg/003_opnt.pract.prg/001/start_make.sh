#!/bin/bash

fn_22979_9100(){

    local fl_pth_fn_22979_9100="${HOME}/edu_clng/.d/.osdn/pract.prg/003_opnt.pract.prg/001/start_make.sh"
    local dr_pth_fn_22979_9100=$(dirname ${HOME}/edu_clng/.d/.osdn/pract.prg/003_opnt.pract.prg/001/start_make.sh)
    local fl_nm_fn_22979_9100=$(basename ${HOME}/edu_clng/.d/.osdn/pract.prg/003_opnt.pract.prg/001/start_make.sh)
    local rnd=22979_9100

    # [[ -z "$1" ]] && {
    #     # snp "out_err"
    #     echo -e "${ECHO_RET1}in file://$fn_nm_fn_22979_9100 , line=${LINENO} :: ARG_1_NOT_DEFINE, return 1${NRM}" >&2
    #     return 1
    # }

    [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl_pth_fn_22979_9100 ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }

    local arg_1_fn_22979_9100="$1"
    local arg_2_fn_22979_9100="$2"
    local arg_3_fn_22979_9100="$3"
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

    # cd ${dr_pth_fn_22979_9100} || return 1
    # local dr_1_fn_22979_9100=${dr_pth_fn_22979_9100}/${arg_1_fn_22979_9100}
    # local fl_1_fn_22979_9100=${dr_pth_fn_22979_9100}/${arg_1_fn_22979_9100}
    # contane {\fn_nm\} [[body]]
    eval "cd \${dr_pth_fn_${rnd}} || return 1"
    
    make clean
    make

    ./hello.cxe
    echo $?
    return 0

}

fn_22979_9100 $@