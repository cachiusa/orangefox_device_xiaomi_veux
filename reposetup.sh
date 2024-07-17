check_submodule () {
    if [[ -d "$2"/.git ]]; then
        remote="$(git -C $2 config --get remote.origin.url)"
        if [[ "$remote" == $1* ]]; then
            needs_setup=0
            ref=$(git -C $2 rev-parse --verify --short=8 HEAD)
            echo "[  OK  ] $2 @ $ref"
        else
            needs_setup=1
        fi
    else
        needs_setup=1
    fi
    
    if [[ "$needs_setup" == "1" ]]; then
        echo "[ INFO ] Setting up: $2"
        rm -rf $2/
        if git clone $1 $2 --depth 1 ; then
            echo "[  OK  ] $2 @ $(git -C $2 rev-parse --verify --short=8 HEAD)"
        else
            echo "[FAILED] Unable to clone $1"
            echo "[ INFO ] You should verify it in"
            echo "    $(pwd)/device/xiaomi/veux/reposetup.sh"
        fi
    fi
}
echo "[ INFO ] Checking for dependencies..."
check_submodule https://github.com/cachiusa/veux-prebuilts device/xiaomi/veux/prebuilts
check_submodule https://github.com/dereference23/kernel_xiaomi_sm6375 kernel/xiaomi/sm6375

. ./device/xiaomi/veux/prebuilts/orangefox/setup.sh