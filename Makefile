ifneq ($(KERNELRELEASE),)
obj-m := hello_proc.o 

else
KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)
default: 
 $(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules 
 rm -r -f .tmp_versions *.mod.c .*.cmd *.o *.symvers 

endif
