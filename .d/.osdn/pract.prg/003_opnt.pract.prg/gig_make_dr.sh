#!/bin/bash

fn_21444_53452(){

    local fl_pth_fn_21444_53452="${HOME}/edu_clng/.d/.osdn/pract.prg/003_opnt.pract.prg/gig_make_dr.sh"
    local dr_pth_fn_21444_53452=$(dirname ${HOME}/edu_clng/.d/.osdn/pract.prg/003_opnt.pract.prg/gig_make_dr.sh)
    local fl_nm_fn_21444_53452=$(basename ${HOME}/edu_clng/.d/.osdn/pract.prg/003_opnt.pract.prg/gig_make_dr.sh)
    local rnd=21444_53452

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

    local arg_1_fn_21444_53452="$1"
    local arg_2_fn_21444_53452="$2"
    local arg_3_fn_21444_53452="$3"
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml
    # {{body}}

    cd ${dr_pth_fn_21444_53452} || return 1
    local dr_1_fn_21444_53452=${dr_pth_fn_21444_53452}/${arg_1_fn_21444_53452}
    # local fl_1_fn_21444_53452=${dr_pth_fn_21444_53452}/${arg_1_fn_21444_53452}

    cp -r ${dr_pth_fn_21444_53452}/.d ${dr_1_fn_21444_53452} || return 1
    lfoe_gig_sh ${dr_1_fn_21444_53452} start_make.sh || return 1
    l_02_fs2f ${dr_pth_fn_21444_53452}/gig_make_dr.dta/start_make.sh.body "{{body}}" ${dr_1_fn_21444_53452}/start_make.sh
    l_02_s2f "{{body}}" "[[body]]" "${dr_1_fn_21444_53452}"/start_make.sh

    cd ${dr_1_fn_21444_53452}

    . start_make.sh

    return 0

}

fn_21444_53452 $@