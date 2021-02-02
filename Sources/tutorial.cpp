// A simple program that computes the square root of a number
#include <cmath>
#include <iostream>
#include <string>

#include "TutorialConfig.h"

// should we include the MathFunctions header?
#ifdef USE_MYMATH
#  include "MathFunctions.h"
#endif

double main()
{
  // report version
  std::cout << "IAR C/C++ Compiler with CMake Tutorial version " 
            << Tutorial_VERSION_MAJOR << "."
            << Tutorial_VERSION_MINOR << "."
            << Tutorial_VERSION_PATCH << std::endl;

  // convert input to double
  const double inputValue = 9.869604f;

  // which square root function should we use?
#ifdef USE_MYMATH
  const double outputValue = mysqrt(inputValue);
#else
  const double outputValue = sqrt(inputValue);
#endif
#ifndef NDEBUG
  std::cout << "The square root of " << inputValue 
            << " is " << outputValue << std::endl;
#endif  
  return outputValue;
}