#!/bin/bash

fn_27735_21459(){

    local fl_pth_fn_27735_21459="${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/gig_make_dr.sh"
    local dr_pth_fn_27735_21459=$(dirname ${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/gig_make_dr.sh)
    local fl_nm_fn_27735_21459=$(basename ${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/gig_make_dr.sh)
    local rnd=27735_21459

        [[ -z "$1" ]] && {
            echo -e "${ECHO_RET1}in file://$fn_nm , line=${LINENO} :: ARG_1_NOT_DEFINE is name gig dir, return 1${NRM}" >&2
            return 1
        }

        [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }

    local arg_1_fn_27735_21459="$1"
    local arg_2_fn_27735_21459="$2"
    local arg_3_fn_27735_21459="$3"
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml
    # {{body}}

    cd ${dr_pth_fn_27735_21459} || return 1
    local dr_1_fn_27735_21459=${dr_pth_fn_27735_21459}/${arg_1_fn_27735_21459}
    # local fl_1_fn_27735_21459=${dr_pth_fn_27735_21459}/${arg_1_fn_27735_21459}

    cp -r ${dr_pth_fn_27735_21459}/_000 ${dr_1_fn_27735_21459} || return 1
    lfoe_gig_sh ${dr_1_fn_27735_21459} start_make.sh || return 1
    l_02_fs2f ${dr_pth_fn_27735_21459}/gig_make_dr.dta/start_make.sh.body "{{body}}" ${dr_1_fn_27735_21459}/start_make.sh
    l_02_s2f "{{body}}" "[[body]]" "${dr_1_fn_27735_21459}"/start_make.sh

    cd ${dr_1_fn_27735_21459}

    . start_make.sh

    return 0

}

fn_27735_21459 $@