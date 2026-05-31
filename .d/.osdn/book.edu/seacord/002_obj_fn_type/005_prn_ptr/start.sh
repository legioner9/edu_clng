#!/bin/bash

fn_2659_1291(){

    local fl_pth_fn_2659_1291="${HOME}/edu_clng/.d/.osdn/book.edu/seacord/002_obj_fn_type/005_prn_ptr/start.sh"
    local dr_pth_fn_2659_1291=$(dirname ${HOME}/edu_clng/.d/.osdn/book.edu/seacord/002_obj_fn_type/005_prn_ptr/start.sh)
    local fl_nm_fn_2659_1291=$(basename ${HOME}/edu_clng/.d/.osdn/book.edu/seacord/002_obj_fn_type/005_prn_ptr/start.sh)
    local rnd=2659_1291

    # [[ -z "$1" ]] && {
    #     # snp "out_err"
    #     echo -e "${ECHO_RET1}in file://$fn_nm_fn_2659_1291 , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
    #     return 1
    # }

    [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl_pth_fn_2659_1291 ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }

    local arg_1_fn_2659_1291="$1"
    local arg_2_fn_2659_1291="$2"
    local arg_3_fn_2659_1291="$3"

	# [[ -z "$2" ]] && {
	# 	# snp "out_err"
	# 	echo -e "${ECHO_RET1}in file://$fn_nm_fn_2659_1291 , line=${LINENO} :: ARG_2_NOT_DEFINE is ..., return 1${NRM}" >&2
	# 	return 1
	# }

	#! ptr_path
	# local ptr_path_1="$arg_1_fn_2659_1291"
	# ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

    # cd ${dr_pth_fn_2659_1291} || return 1
    # local dr_1_fn_2659_1291=${dr_pth_fn_2659_1291}/${arg_1_fn_2659_1291}
    # local fl_1_fn_2659_1291=${dr_pth_fn_2659_1291}/${arg_1_fn_2659_1291}
    # contane {\fn_nm\} {{body}}
    eval "cd \${dr_pth_fn_${rnd}}/_.d || return 1"

    make hello
    # make hello_gdb
    
    ./hello.cxe
    # echo $?
    return 0

}

fn_2659_1291 $@
#DATE :: Вс 31 мая 2026 18:52:51 +07
#SGN :: . ${HOME}/edu_clng/.d/.osdn/book.edu/seacord/002_obj_fn_type/gig_dr.sh 005_prn_ptr ${HOME}/edu_clng/.d/.osdn/book.edu/seacord/002_obj_fn_type/_.f.d/_.f.001 prn_ptr.c 
