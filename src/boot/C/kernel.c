#include "print.h"

void kernel_main() {
    print_clear();
    print_set_color(PRINT_COLOR_RED, PRINT_COLOR_BLACK);
    print_str("Welcome to JunaidOS\n");
    print_str("Built By Sohaib Alam\n");
    print_str("#######\n");
    print_str("#   # #\n");
    print_str("# # # #      JunaidOS\n");
    print_str("#  # ##        v.0.001\n");
    print_str("#    ##\n");
    print_str("#######\n");
    print_str("Have a nice time\n");


}