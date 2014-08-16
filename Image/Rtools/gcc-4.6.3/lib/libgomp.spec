# This spec file is read by gcc when linking.  It is used to specify the
# standard libraries we need in order to link with -fopenmp.
# static libgomp needs pthreads: DLL may do too, and it does not hurt.
*link_gomp: -lgomp -lpthread
