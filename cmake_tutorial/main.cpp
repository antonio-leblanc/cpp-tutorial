#include <iostream>
#include "FirePropagation.h"
#include "FireModel.h"
#include "DataBroker.h"
#include "FluxModel.h"


int main(){
  std::cout << "VAMO TIME" << std::endl;
  DataBroker().loadData();
  LabresModel().getParams();
  FluxModel().fluxo();
  FirePropagation().propagate();
  return 0;
}