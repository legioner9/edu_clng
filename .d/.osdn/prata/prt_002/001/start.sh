#!/bin/bash

fn_10309_28132(){

    local fl_pth_fn_10309_28132="${HOME}/edu_clng/.d/.osdn/prata/prt_002/001/start.sh"
    local dr_pth_fn_10309_28132=$(dirname ${HOME}/edu_clng/.d/.osdn/prata/prt_002/001/start.sh)
    local fl_nm_fn_10309_28132=$(basename ${HOME}/edu_clng/.d/.osdn/prata/prt_002/001/start.sh)
    local rnd=10309_28132

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

    make hello
    
    ./hello.cxe
    return 0

}

fn_10309_28132 $@