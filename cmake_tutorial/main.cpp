#include <iostream>
#include "FirePropagation.h"
#include "FireModel.h"
#include "DataBroker.h"


int main(){
  std::cout << "VAMO TIME" << std::endl;
  DataBroker().loadData();
  LabresModel().getParams();
  FirePropagation().propagate();
  return 0;
}