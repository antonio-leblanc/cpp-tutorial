#include <iostream>
#include "FirePropagation.h"
#include "FireModel.h"


int main(){
  std::cout << "VAMO TIME" << std::endl;
  LabresModel().getParams();
  FirePropagation().propagate();
  return 0;
}