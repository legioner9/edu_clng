# {{hint}}
# Trg: Dpn(Trg or Fls)
# 	Cmnd	
# var := value
# $@ 								:: $@ - target
# $^								:: $^ - depend
# %									:: %  - common part
# $(arr[a.o, b.o], ...): %.c: %o	:: arr - iterator [a.o: a.c, b.o: b.c, ...]
# example_1 : instead
# a.o: a.c
# 	$(CC) -c $^ -o $@
# b.o: b.c
# 	$(CC) -c $^ -o $@ 
# all.o: all.c
# 	$(CC) -c $^ -o $@

# that code:
# $(obj): %.o: %.c
# 	$(CC) -c $^ -o $@

# wildcard 	:: if empty pattern $(wildcard *.w)
# patsubst  :: obj_fl := $(patsubst %.c,%.o,$(wildcard *.c))

# .PHONY: - define only trg

# includ_dr lib
PTH_L1 = ${HOME}/edu_clng/.d/.osdn/ora_c.pts/007_R_primat_org/001_scanf_printf_v1/_.d/include

# all files in root dir
PTH_M1 = ${HOME}/edu_clng/.d/.osdn/ora_c.pts/007_R_primat_org/001_scanf_printf_v1/_.d

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