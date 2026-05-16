#!/bin/bash

fn_2816_16200(){

    local fl_pth_fn_2816_16200="${HOME}/edu_clng/.d/.osdn/pract.prg/001.pract.prg/003v/001_h/start.sh"
    local dr_pth_fn_2816_16200=$(dirname ${HOME}/edu_clng/.d/.osdn/pract.prg/001.pract.prg/003v/001_h/start.sh)
    local fl_nm_fn_2816_16200=$(basename ${HOME}/edu_clng/.d/.osdn/pract.prg/001.pract.prg/003v/001_h/start.sh)
    local rnd=2816_16200

        [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # {{body}}
    eval "cd \${dr_pth_fn_${rnd}} || return 1"

    make clear
    echo
    make hello.cxe
    echo
    echo "exec :: ./hello.cxe"
    ./hello.cxe

    return 0

}

fn_2816_16200 $@