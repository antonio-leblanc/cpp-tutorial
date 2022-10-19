NETCDF = -lnetcdf_c++ -lnetcdf
# APP = main.cpp models.cpp
SRC_FILES := $(wildcard *.cpp)
CXX = g++
CXXFLAGS = -Wall -ggdb

forefire: $(SRC_FILES)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(NETCDF)