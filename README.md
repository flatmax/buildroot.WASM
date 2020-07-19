
# buildroot repo setup

First clone buildroot then apply the buildroot.wasm.diff file. It would be better to not alter the original buildroot repo, but some stuff has to be added.

# clang setup
source ./clangSetup.sh
# buildroot setup
./basicSetupCmds.sh

# emsdk env vars
source /usr/local/emsdk-portable/emsdk_env.sh

# buildroot
cd buildroot
make BR2_EXTERNAL=~/flatmax/personal.work/buildroot/wasm wasm_defconfig
