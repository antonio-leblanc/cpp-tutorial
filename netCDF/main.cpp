#include <iostream>
#include <netcdfcpp.h>
#include "models.h"

int main(int argc, char* argv[])
{
  LabresModel().getParams();
  NcFile dataFile("simple_xy.nc", NcFile::Replace);
}