ifeq ($(KERNELRELEASE),)
all:
	$(MAKE) -C /lib/modules/5.10.0-1045-generic/build M=$(PWD) modules
else
obj-m	= hid-multitouch.o
endif
