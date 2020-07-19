
# clang setup
source ./clangSetup.sh
# buildroot setup
./basicSetupCmds.sh

# emsdk env vars
source /usr/local/emsdk-portable/emsdk_env.sh

# buildroot
cd buildroot
make BR2_EXTERNAL=~/flatmax/personal.work/buildroot/wasm wasm_defconfig
