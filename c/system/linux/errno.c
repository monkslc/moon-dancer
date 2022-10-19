#include <errno.h>

// NOTE(@monkslc): I had trouble getting the value of errno through odin. Creating this function and
// calling it through a ffi was the only way I could reliably get the value.
int get_errno() {
    return errno;
}
