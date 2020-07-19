#!/bin/bash
# mkdir -p /home/flatmax.unencrypted/buildroot.webassembly/output/build/skeleton
# mkdir -p /home/flatmax.unencrypted/buildroot.webassembly/output/build/toolchain-external-custom
# mkdir -p /home/flatmax.unencrypted/buildroot.webassembly/output/build/toolchain-external
# mkdir -p /home/flatmax.unencrypted/buildroot.webassembly/output/build/toolchain
#  echo '' > /home/flatmax.unencrypted/buildroot.webassembly/output/build/skeleton/.stamp_target_installed
#  echo '' > /home/flatmax.unencrypted/buildroot.webassembly/output/build/toolchain-external-custom/.stamp_configured
#  echo '' > /home/flatmax.unencrypted/buildroot.webassembly/output/build/toolchain-external-custom/.stamp_target_installed
#  echo '' > /home/flatmax.unencrypted/buildroot.webassembly/output/build/toolchain-external/.stamp_target_installed
#  echo '' > /home/flatmax.unencrypted/buildroot.webassembly/output/build/toolchain/.stamp_target_installed


function dummySetup {
op_path=/home/flatmax.unencrypted/buildroot.webassembly/output/build/
if [ ! -f $op_path$1/.stamp_target_installed ]; then
  mkdir -p $op_path$1
  echo '' > $op_path$1/.stamp_configured
  echo '' > $op_path$1/.stamp_downloaded
  echo '' > $op_path$1/.stamp_extracted
  echo '' > $op_path$1/.stamp_patched
  echo '' > $op_path$1/.stamp_built
  echo '' > $op_path$1/.stamp_host_installed
  echo '' > $op_path$1/.stamp_target_installed
fi
}

# skipPackages="
# host-binutils-2.27
# host-m4-1.4.18
# host-gmp-6.1.2
# host-mpfr-3.1.5
# host-mpc-1.0.3
# host-gcc-initial-5.4.0
# host-gcc-final-5.4.0
# host-gcc-final-5.4.0
# toolchain-buildroot
# toolchain
# host-lzip-1.18
# host-gcc-initial-5.4.0
#
# "
skipPackages=" toolchain-external-custom "
for p in $skipPackages; do
  dummySetup $p
done
