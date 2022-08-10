#include "tcl.h"
#include <iostream>

int main()
{
  Tcl_Interp *tcl_interp = Tcl_CreateInterp(); /* Script interpreter */
  if (tcl_interp == NULL)
  {
    std::cout << "Could not create interpreter!\n";
    return 1;
  }
  std::cout << "Created interpreter!\n";
  std::cin.get();
  return 0;
}
