#!/bin/bash

fn_14814_15348() {

    local fl_pth_fn_14814_15348="${HOME}/edu_clng/.d/.osdn/asm.edu/cources.asm/metanit.d/001g/004p/start.sh"
    local dr_pth_fn_14814_15348=$(dirname ${HOME}/edu_clng/.d/.osdn/asm.edu/cources.asm/metanit.d/001g/004p/start.sh)
    local fl_nm_fn_14814_15348=$(basename ${HOME}/edu_clng/.d/.osdn/asm.edu/cources.asm/metanit.d/001g/004p/start.sh)
    local rnd=14814_15348

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

    cd $dr_pth_fn_14814_15348 || return 1

    # make hello
    # ./hello.axe

    # rm hello.o hello.axe

    as hello.s -o hello.o
    ld hello.o -o hello.axe
    ./hello.axe
    echo $?

    return 0

}

fn_14814_15348 $@
