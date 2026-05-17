#!/bin/bash

fn_735_7063(){

    local fl_pth_fn_735_7063="${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/011_hnd_cmpl_auto_1/start_make.sh"
    local dr_pth_fn_735_7063=$(dirname ${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/011_hnd_cmpl_auto_1/start_make.sh)
    local fl_nm_fn_735_7063=$(basename ${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/011_hnd_cmpl_auto_1/start_make.sh)
    local rnd=735_7063

    # [[ -z "$1" ]] && {
    #     # snp "out_err"
    #     echo -e "${ECHO_RET1}in file://$fn_nm_fn_735_7063 , line=${LINENO} :: ARG_1_NOT_DEFINE, return 1${NRM}" >&2
    #     return 1
    # }

    [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl_pth_fn_735_7063 ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }

    local arg_1_fn_735_7063="$1"
    local arg_2_fn_735_7063="$2"
    local arg_3_fn_735_7063="$3"
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

    # cd ${dr_pth_fn_735_7063} || return 1
    # local dr_1_fn_735_7063=${dr_pth_fn_735_7063}/${arg_1_fn_735_7063}
    # local fl_1_fn_735_7063=${dr_pth_fn_735_7063}/${arg_1_fn_735_7063}
    # {{body}}
    eval "cd \${dr_pth_fn_${rnd}} || return 1"

    make
    return 0

}

fn_735_7063 $@