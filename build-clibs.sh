set -e

build_dir=build/

# Accepts a path to a directory containing c source files and writes out a library file nested under
# the same path within the build directory
build_lib() {
    in_dir=$1
    out_dir=$build_dir/$1
    echo "building library $in_dir at $out_dir"

    mkdir -p $out_dir
    gcc -c $in_dir/*.c -o $out_dir/lib.a
}

build_lib "c/system/linux"
