#!/bin/bash

fn_25690_28060(){

    local fl_pth_fn_25690_28060="${HOME}/edu_clng/.d/.osdn/asm.edu/cources.asm/metanit.d/002g/002p/006_jmp_to_ptr_in_dta/start.sh"
    local dr_pth_fn_25690_28060=$(dirname ${HOME}/edu_clng/.d/.osdn/asm.edu/cources.asm/metanit.d/002g/002p/006_jmp_to_ptr_in_dta/start.sh)
    local fl_nm_fn_25690_28060=$(basename ${HOME}/edu_clng/.d/.osdn/asm.edu/cources.asm/metanit.d/002g/002p/006_jmp_to_ptr_in_dta/start.sh)
    local rnd=25690_28060

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
   eval "cd \${dr_pth_fn_${rnd}}" || return 1

    make hello

    ./hello.sxe
    echo $?
    return 0

}

fn_25690_28060 $@