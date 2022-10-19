NETCDF = -lnetcdf_c++ -lnetcdf
APP = main.cpp models.cpp
CXX = g++
CXXFLAGS = -Wall -ggdb

forefire: $(APP)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(NETCDF)