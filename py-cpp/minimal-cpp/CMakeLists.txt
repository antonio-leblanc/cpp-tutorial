# Specify the minimum version of CMake required
cmake_minimum_required(VERSION 3.10)

# Define the project name (this also sets some default variable names)
# Languages default to C and CXX (C++)
project(simple_adder VERSION 1.0 LANGUAGES CXX)

# Set the C++ standard to use (e.g., C++11)
# This ensures the compiler uses features from at least C++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON) # Make it an error if the standard is not supported
set(CMAKE_CXX_EXTENSIONS OFF)       # Avoid compiler-specific extensions (good practice)

# --------------------------------------------------------------------------
# Build the Adder Library
# --------------------------------------------------------------------------

# Use add_library to define a library target named "adder_lib".
# SHARED means build it as a shared library (.so, .dylib, .dll).
# STATIC would build an archive library (.a, .lib). Shared is better for Python extensions.
# The source file(s) needed to build this library are listed afterwards.
add_library(adder_lib SHARED
    adder.cpp
)

# If our library needed to link against other libraries, we would use
# target_link_libraries(adder_lib PRIVATE some_other_lib)
# But our simple adder doesn't need any external libraries.

# --------------------------------------------------------------------------
# Optional: Control Output Locations (useful for consistency)
# --------------------------------------------------------------------------
# Place the compiled library (.so/.dylib/.dll) into a 'lib' subdirectory
# relative to the build directory.
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
# Place compiled executables (if any) into a 'bin' subdirectory.
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
# Place compiled static libraries (.a/.lib) into a 'lib' subdirectory.
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)


# --------------------------------------------------------------------------
# Optional: Installation Rules (More relevant later for packaging)
# --------------------------------------------------------------------------
# This tells CMake where to put files if someone runs "make install" or
# if a packaging tool like CPack or scikit-build-core uses the install rules.
# install(TARGETS adder_lib
#     LIBRARY DESTINATION lib  # Install shared libs to <prefix>/lib
#     ARCHIVE DESTINATION lib  # Install static libs to <prefix>/lib
#     RUNTIME DESTINATION bin  # Install executables to <prefix>/bin
# )
# install(FILES adder.h DESTINATION include) # Install header file to <prefix>/include

# For now, we can keep the install rules commented out as we are just learning
# the build process. They become crucial when integrating with Python packaging.