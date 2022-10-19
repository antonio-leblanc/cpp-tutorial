NETCDF = -lnetcdf_c++ -lnetcdf
APP = main.cpp
CXX = g++
CXXFLAGS = -Wall -ggdb

forefire: $(APP)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(NETCDF)