/usr/local/bin/qemu-system-aarch64 -machine virt -cpu cortex-a72 -smp 6 -m 4G \
    -kernel /home/xiyanxiyan10/project/linux-6.1.34/arch/arm64/boot/Image -append "root=/dev/vda2 rootfstype=ext4 rw panic=0 console=ttyAMA0" \
    -drive format=raw,file=/home/xiyanxiyan10/project/2023-12-05-raspios-bullseye-armhf.img,if=none,id=hd0,cache=writeback \
    -device virtio-blk,drive=hd0,bootindex=0 \
    -monitor telnet:127.0.0.1:5555,server,nowait  -no-reboot -serial stdio
