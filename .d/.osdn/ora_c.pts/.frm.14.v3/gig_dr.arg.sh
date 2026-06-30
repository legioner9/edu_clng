# ptrn::
# ptrn::
#. PTH1/gig_dr.sh \
#	PTH2/NM_FL_BIN.fn/NNN \ #.. be created
#	NM_FL_C.c #.. mast ext=.c

ora_dr=${HOME}/edu_clng/.d/.osdn/ora_c.pts
frm_14=${ora_dr}/.frm.14.v3 #.. version frm
gig_dr_sh=${frm_14}/gig_dr.sh

main_theme=007_R_primat_org
sub_theme=001_printf_v1

. ${gig_dr_sh} \
	${ora_dr}/${main_theme}/${sub_theme} \
	${sub_theme}.c

