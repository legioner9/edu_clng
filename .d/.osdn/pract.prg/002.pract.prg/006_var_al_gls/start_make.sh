#!/bin/bash

fn_20830_1927(){

    local fl_pth_fn_20830_1927="${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/006_var_al_gls/start_make.sh"
    local dr_pth_fn_20830_1927=$(dirname ${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/006_var_al_gls/start_make.sh)
    local fl_nm_fn_20830_1927=$(basename ${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/006_var_al_gls/start_make.sh)
    local rnd=20830_1927

    # [[ -z "$1" ]] && {
    #     # snp "out_err"
    #     echo -e "${ECHO_RET1}in file://$fn_nm_fn_20830_1927 , line=${LINENO} :: ARG_1_NOT_DEFINE, return 1${NRM}" >&2
    #     return 1
    # }

    [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl_pth_fn_20830_1927 ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }

    local arg_1_fn_20830_1927="$1"
    local arg_2_fn_20830_1927="$2"
    local arg_3_fn_20830_1927="$3"
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

    # cd ${dr_pth_fn_20830_1927} || return 1
    # local dr_1_fn_20830_1927=${dr_pth_fn_20830_1927}/${arg_1_fn_20830_1927}
    # local fl_1_fn_20830_1927=${dr_pth_fn_20830_1927}/${arg_1_fn_20830_1927}
    # {{body}}
    eval "cd \${dr_pth_fn_${rnd}} || return 1"

    make
    return 0

}

fn_20830_1927 $@