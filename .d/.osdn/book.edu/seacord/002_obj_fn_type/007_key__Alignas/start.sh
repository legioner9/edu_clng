#!/bin/bash

fn_18925_17358(){

    local fl_pth_fn_18925_17358="${HOME}/edu_clng/.d/.osdn/book.edu/seacord/002_obj_fn_type/007_key__Alignas/start.sh"
    local dr_pth_fn_18925_17358=$(dirname ${HOME}/edu_clng/.d/.osdn/book.edu/seacord/002_obj_fn_type/007_key__Alignas/start.sh)
    local fl_nm_fn_18925_17358=$(basename ${HOME}/edu_clng/.d/.osdn/book.edu/seacord/002_obj_fn_type/007_key__Alignas/start.sh)
    local rnd=18925_17358

    # [[ -z "$1" ]] && {
    #     # snp "out_err"
    #     echo -e "${ECHO_RET1}in file://$fn_nm_fn_18925_17358 , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
    #     return 1
    # }

    [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl_pth_fn_18925_17358 ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }

    local arg_1_fn_18925_17358="$1"
    local arg_2_fn_18925_17358="$2"
    local arg_3_fn_18925_17358="$3"

	# [[ -z "$2" ]] && {
	# 	# snp "out_err"
	# 	echo -e "${ECHO_RET1}in file://$fn_nm_fn_18925_17358 , line=${LINENO} :: ARG_2_NOT_DEFINE is ..., return 1${NRM}" >&2
	# 	return 1
	# }

	#! ptr_path
	# local ptr_path_1="$arg_1_fn_18925_17358"
	# ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

    # cd ${dr_pth_fn_18925_17358} || return 1
    # local dr_1_fn_18925_17358=${dr_pth_fn_18925_17358}/${arg_1_fn_18925_17358}
    # local fl_1_fn_18925_17358=${dr_pth_fn_18925_17358}/${arg_1_fn_18925_17358}
    # contane {\fn_nm\} {{body}}
    eval "cd \${dr_pth_fn_${rnd}}/_.d || return 1"

    make clean
    make hello
    # make hello_gdb
    
    ./hello.cxe
    echo $?
    return 0

}

fn_18925_17358 $@
#DATE :: Вс 31 мая 2026 20:28:20 +07
#SGN :: . ${HOME}/edu_clng/.d/.osdn/book.edu/seacord/002_obj_fn_type/gig_dr.sh 007_key__Alignas ${HOME}/edu_clng/.d/.osdn/book.edu/seacord/002_obj_fn_type/_.f.d/_.f.001 key__Alignas.c 
