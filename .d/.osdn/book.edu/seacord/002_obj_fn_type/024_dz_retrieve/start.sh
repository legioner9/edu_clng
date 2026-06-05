#!/bin/bash

fn_20790_13821(){

    local fl_pth_fn_20790_13821="${HOME}/edu_clng/.d/.osdn/book.edu/seacord/002_obj_fn_type/024_dz_retrieve/start.sh"
    local dr_pth_fn_20790_13821=$(dirname ${HOME}/edu_clng/.d/.osdn/book.edu/seacord/002_obj_fn_type/024_dz_retrieve/start.sh)
    local fl_nm_fn_20790_13821=$(basename ${HOME}/edu_clng/.d/.osdn/book.edu/seacord/002_obj_fn_type/024_dz_retrieve/start.sh)
    local rnd=20790_13821

    # [[ -z "$1" ]] && {
    #     # snp "out_err"
    #     echo -e "${ECHO_RET1}in file://$fn_nm_fn_20790_13821 , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
    #     return 1
    # }

    [[ "$1" == "-h" ]] && {
        echo -e "
        this -h for fl_pth_fn_20790_13821 ::
        doing :: 
            exa use ::
            far use ::
        "
        return 0
    }

    local arg_1_fn_20790_13821="$1"
    local arg_2_fn_20790_13821="$2"
    local arg_3_fn_20790_13821="$3"

	# [[ -z "$2" ]] && {
	# 	# snp "out_err"
	# 	echo -e "${ECHO_RET1}in file://$fn_nm_fn_20790_13821 , line=${LINENO} :: ARG_2_NOT_DEFINE is ..., return 1${NRM}" >&2
	# 	return 1
	# }

	#! ptr_path
	# local ptr_path_1="$arg_1_fn_20790_13821"
	# ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"
 
    # l_02_fs2f ins.f {{pre_str_in_rcv.f}} rcv.f
    # l_02_s2f :: reciver_string: $1 inserter_string: $2 [@ - empty string] in reciver_result_file: $3 
    # lfoe_path_to_var ::  insert \${HOME} into string '${HOME}'
    # lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

    # cd ${dr_pth_fn_20790_13821} || return 1
    # local dr_1_fn_20790_13821=${dr_pth_fn_20790_13821}/${arg_1_fn_20790_13821}
    # local fl_1_fn_20790_13821=${dr_pth_fn_20790_13821}/${arg_1_fn_20790_13821}
    # contane {\fn_nm\} {{body}}
    eval "cd \${dr_pth_fn_${rnd}}/_.d || return 1"

    make clean
    make hello
    # make hello_gdb
    
    ./hello.cxe
    # echo $?
    return 0

}

fn_20790_13821 $@
#DATE :: Пт 05 июн 2026 18:50:47 +07
#SGN :: . ${HOME}/edu_clng/.d/.osdn/book.edu/seacord/002_obj_fn_type/gig_dr.sh 024_dz_retrieve ${HOME}/edu_clng/.d/.osdn/book.edu/seacord/002_obj_fn_type/_.f.d/_.f.001 dz_retrieve.c 
