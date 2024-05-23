check_submodule () {
  if ! [[ -d "$2"/.git ]] ; then
    echo "[-] Setting up: $2"
    rm -rf $2/
    if git clone $1 $2 --depth 1 ; then
      echo "[OK] $2 @ $(git -C $2 rev-parse --verify --short=8 HEAD)"
    else
      echo "[FAILED] Unable to clone $1"
      echo "[INFO] You should verify it in $(pwd)/device/xiaomi/veux/reposetup.sh"
    fi
  else
    ref=$(git -C $2 rev-parse --verify --short=8 HEAD)
    echo "[OK] $2 @ $ref"
  fi
}
echo "[+] Checking for dependencies..."
check_submodule https://github.com/cachiusa/veux-prebuilts device/xiaomi/veux/prebuilts
check_submodule https://github.com/dereference23/kernel_xiaomi_sm6375 kernel/xiaomi/sm6375
check_submodule https://github.com/PixelExperienceArchive/vendor_xiaomi_veux vendor/xiaomi/veux

if [ ! -f kernel/xiaomi/sm6375/Android.bp ]; then
  mv kernel/xiaomi/sm6375/Androidbp kernel/xiaomi/sm6375/Android.bp
fi
. ./device/xiaomi/veux/prebuilts/orangefox/setup.sh