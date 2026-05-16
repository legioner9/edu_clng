#!/bin/bash

fn_13710_8719(){

    local fl_pth_fn_13710_8719="${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/gig_make_d.sh"
    local dr_pth_fn_13710_8719=$(dirname ${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/gig_make_d.sh)
    local fl_nm_fn_13710_8719=$(basename ${HOME}/edu_clng/.d/.osdn/pract.prg/002.pract.prg/gig_make_d.sh)
    local rnd=13710_8719

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

    cd 

    return 0

}

fn_13710_8719 $@