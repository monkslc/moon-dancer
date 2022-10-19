package linux

import "core:c"

foreign import clinux "../../../build/c/system/linux/lib.a"
foreign clinux {
    get_errno :: proc() -> c.int ---
}

foreign {
    fork :: proc() -> c.int ---
    execve :: proc(cstring, []cstring, []cstring) -> c.int ---
}
