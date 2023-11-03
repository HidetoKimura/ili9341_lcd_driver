CR_C := aarch64-linux-gnu-
MODULES := "/home/kimura/work/armbian/build/cache/sources/linux-kernel-worktree/5.10__rk35xx__arm64/"
obj-m := ili9341_lcd_driver.o

all:
	make ARCH=arm64 CROSS_COMPILE=$(CR_C) -C $(MODULES) M=$(shell pwd) modules

clean:
	rm -rf *.o *.ko *.mod *.mod.c *.order *.symvers .*.cmd
