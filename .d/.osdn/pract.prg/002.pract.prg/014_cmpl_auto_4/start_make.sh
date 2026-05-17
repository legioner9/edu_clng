#!/bin/bash

fn_27675_621() {

    local fl_pth_fn_27675_621="${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/014_cmpl_auto_4/start_make.sh"
    local dr_pth_fn_27675_621=$(dirname ${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/014_cmpl_auto_4/start_make.sh)
    local fl_nm_fn_27675_621=$(basename ${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/014_cmpl_auto_4/start_make.sh)
    local rnd=27675_621

    # [[ -z "$1" ]] && {
    #     # snp "out_err"
    #     echo -e "${ECHO_RET1}in file://$fn_nm_fn_27675_621 , line=${LINENO} :: ARG_1_NOT_DEFINE, return 1${NRM}" >&2
    #     return 1
    # }

    [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl_pth_fn_27675_621 ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }

    local arg_1_fn_27675_621="$1"
    local arg_2_fn_27675_621="$2"
    local arg_3_fn_27675_621="$3"

    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

    # cd ${dr_pth_fn_27675_621} || return 1
    # local dr_1_fn_27675_621=${dr_pth_fn_27675_621}/${arg_1_fn_27675_621}
    # local fl_1_fn_27675_621=${dr_pth_fn_27675_621}/${arg_1_fn_27675_621}
    # {{body}}
    eval "cd \${dr_pth_fn_${rnd}} || return 1"
    make clean
    make

    ./hello.cxe
    echo $?
    return 0

}

fn_27675_621 $@
