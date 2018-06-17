FROM cowtwo/gem5_build:4.0

MAINTAINER cowtwo

LABEL Description="Docker image for gem5"

########################################################################################
# Env setup for full-system mode (Linux kernel running on ARM which simulated by gem5)
########################################################################################
# Install toolchain and test tools
RUN apt-get install -y gcc-arm-linux-gnueabihf gcc-aarch64-linux-gnu device-tree-compiler bc telnet

# Build DTB files to describe the hardware to the OS ship with gem5.
WORKDIR /usr/local/src/gem5
RUN make -C system/arm/dt

# Compile bootloader (both 32 bit and 64 bit bootloader are needed during simulation start-up check)
WORKDIR /usr/local/src/gem5
RUN make -C system/arm/simple_bootloader ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-
RUN make -C system/arm/aarch64_bootloader ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-

# Checkout the kernel
WORKDIR /usr/local/src
RUN git clone https://gem5.googlesource.com/arm/linux
WORKDIR /usr/local/src/linux
RUN git checkout -b gem5/v4.4

# Compile the kernel for AArch32
WORKDIR /usr/local/src/linux
RUN make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- gem5_defconfig
RUN make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j `nproc`

# Copy compiled linux kernel, dtb, bootloader to binaries directory of M5_PATH 
# Copy disk-image(download from gem5 website) to disks directory of M5_PATH
# Ex: we export M5_PATH to /usr/local/src/gem5/system/arm/
WORKDIR /usr/local/src/gem5/system/arm/
RUN mkdir binaries
RUN mkdir disks
COPY linux-aarch32-ael.img /usr/local/src/gem5/system/arm/disks
RUN cp /usr/local/src/linux/vmlinux /usr/local/src/gem5/system/arm/binaries
RUN cp /usr/local/src/gem5/system/arm/simple_bootloader/boot_emm.arm  /usr/local/src/gem5/system/arm/binaries
RUN cp /usr/local/src/gem5/system/arm/aarch64_bootloader/boot_emm.arm64  /usr/local/src/gem5/system/arm/binaries
RUN cp /usr/local/src/gem5/system/arm/dt/armv7_gem5_v1_1cpu.dtb  /usr/local/src/gem5/system/arm/binaries

####################################################################################
# Env setup for full-system mode (bare-metal running on ARM which simulated by gem5)
#################################################################################### 
RUN apt-get install -y gcc-arm-none-eabi

# Finished
WORKDIR /usr/local/src/gem5
