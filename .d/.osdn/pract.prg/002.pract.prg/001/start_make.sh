#!/bin/bash

fn_23111_5952(){

    local fl_pth_fn_23111_5952="${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/001/start_make.sh"
    local dr_pth_fn_23111_5952=$(dirname ${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/001/start_make.sh)
    local fl_nm_fn_23111_5952=$(basename ${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/001/start_make.sh)
    local rnd=23111_5952

        [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }

    local arg_1_fn_23111_5952="$1"
    local arg_2_fn_23111_5952="$2"
    local arg_3_fn_23111_5952="$3"
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

    # cd ${dr_pth_fn_23111_5952} || return 1
    # local dr_1_fn_23111_5952=${dr_pth_fn_23111_5952}/${arg_1_fn_23111_5952}
    # local fl_1_fn_23111_5952=${dr_pth_fn_23111_5952}/${arg_1_fn_23111_5952}
    # {{body}}
    eval "cd \${dr_pth_fn_${rnd}} || return 1"

    make
    return 0

}

fn_23111_5952 $@