cmake_minimum_required (VERSION 3.11)
project(atmel_swi_analyzer)

# custom CMake Modules are located in the cmake directory.
set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

include(ExternalAnalyzerSDK)

set(SOURCES 
src/AtmelSWIAnalyzer.cpp
src/AtmelSWIAnalyzer.h
src/AtmelSWIAnalyzerResults.cpp
src/AtmelSWIAnalyzerResults.h
src/AtmelSWIAnalyzerSettings.cpp
src/AtmelSWIAnalyzerSettings.h
src/AtmelSWISimulationDataGenerator.cpp
src/AtmelSWISimulationDataGenerator.h
src/AtmelSWITypes.cpp
src/AtmelSWITypes.h
)

add_analyzer_plugin(atmel_swi_analyzer SOURCES ${SOURCES})
