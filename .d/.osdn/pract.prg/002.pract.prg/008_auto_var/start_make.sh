#!/bin/bash

fn_5670_21197(){

    local fl_pth_fn_5670_21197="${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/008_auto_var/start_make.sh"
    local dr_pth_fn_5670_21197=$(dirname ${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/008_auto_var/start_make.sh)
    local fl_nm_fn_5670_21197=$(basename ${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/008_auto_var/start_make.sh)
    local rnd=5670_21197

    # [[ -z "$1" ]] && {
    #     # snp "out_err"
    #     echo -e "${ECHO_RET1}in file://$fn_nm_fn_5670_21197 , line=${LINENO} :: ARG_1_NOT_DEFINE, return 1${NRM}" >&2
    #     return 1
    # }

    [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl_pth_fn_5670_21197 ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }

    local arg_1_fn_5670_21197="$1"
    local arg_2_fn_5670_21197="$2"
    local arg_3_fn_5670_21197="$3"
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

    # cd ${dr_pth_fn_5670_21197} || return 1
    # local dr_1_fn_5670_21197=${dr_pth_fn_5670_21197}/${arg_1_fn_5670_21197}
    # local fl_1_fn_5670_21197=${dr_pth_fn_5670_21197}/${arg_1_fn_5670_21197}
    # {{body}}
    eval "cd \${dr_pth_fn_${rnd}} || return 1"

    make
    return 0

}

fn_5670_21197 $@