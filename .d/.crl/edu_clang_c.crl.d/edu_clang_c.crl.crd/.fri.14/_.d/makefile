# {{hint}}

# includ_dr lib
PTH_L1 = {{result_dr_d}}/include

# all files in root dir
PTH_M1 = {{result_dr_d}}

PTH_AER_FOE_C_CRL = ${HOME}/aer_foe/.d/.crl/aer_foe_c.crl.d/aer_foe_c.crl
PTH_EDU_CLANG_C_CRL = ${HOME}/edu_clng/.d/.crl/edu_clang_c.crl.d/edu_clang_c.crl


# CC = gcc -I include
CC = gcc -I $(PTH_L1) -I $(PTH_AER_FOE_C_CRL) -I $(PTH_EDU_CLANG_C_CRL)

# src_fl := $(wildcard *.c)
obj_fl_incl := $(patsubst %.c,%.o,$(wildcard $(PTH_L1)/*.c))
obj_fl_main := $(patsubst %.c,%.o,$(wildcard $(PTH_M1)/*.c))
obj_fl_aer_foe_c := $(patsubst %.c,%.o,$(wildcard $(PTH_AER_FOE_C_CRL)/*.c))
obj_fl_edu_clang_c := $(patsubst %.c,%.o,$(wildcard $(PTH_EDU_CLANG_C_CRL)/*.c))


.PHONY: hello

hello: $(obj_fl_main) $(obj_fl_incl) $(obj_fl_aer_foe_c) $(obj_fl_edu_clang_c)
	$(CC) $^ -o hello.cxe

$(filter %.o,$(obj_fl_incl)): %.o: %.c
	$(CC) -c $^ -o $@

$(filter %.o,$(obj_fl_main)): %.o: %.c
	$(CC) -c $^ -o $@

$(filter %.o,$(obj_fl_aer_foe_c)): %.o: %.c
	$(CC) -c $^ -o $@

$(filter %.o,$(obj_fl_edu_clang_c)): %.o: %.c
	$(CC) -c $^ -o $@
		
# $(filter %.result,$(obj_fl)): %.result: %.raw
# 	$(CC) -c $^ -o $@

clean:
	rm -fv $(obj_fl_incl) $(obj_fl_aer_foe_c) $(obj_fl_edu_clang_c) all.o hello.cxe