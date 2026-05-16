#!/bin/bash

fn_14015_19712(){

    local fl_pth_fn_14015_19712="${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/009_mgk_cmpl/start_make.sh"
    local dr_pth_fn_14015_19712=$(dirname ${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/009_mgk_cmpl/start_make.sh)
    local fl_nm_fn_14015_19712=$(basename ${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/009_mgk_cmpl/start_make.sh)
    local rnd=14015_19712

    # [[ -z "$1" ]] && {
    #     # snp "out_err"
    #     echo -e "${ECHO_RET1}in file://$fn_nm_fn_14015_19712 , line=${LINENO} :: ARG_1_NOT_DEFINE, return 1${NRM}" >&2
    #     return 1
    # }

    [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl_pth_fn_14015_19712 ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }

    local arg_1_fn_14015_19712="$1"
    local arg_2_fn_14015_19712="$2"
    local arg_3_fn_14015_19712="$3"
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

    # cd ${dr_pth_fn_14015_19712} || return 1
    # local dr_1_fn_14015_19712=${dr_pth_fn_14015_19712}/${arg_1_fn_14015_19712}
    # local fl_1_fn_14015_19712=${dr_pth_fn_14015_19712}/${arg_1_fn_14015_19712}
    # {{body}}
    eval "cd \${dr_pth_fn_${rnd}} || return 1"

    # CC=gcc
    # CFLAGS=-g
    make clean
    make
    ./fn
    echo $?
    CC=
    CFLAGS=
    return 0

}

fn_14015_19712 $@