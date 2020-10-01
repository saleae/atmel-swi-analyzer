cmake_minimum_required (VERSION 3.11)
project(atmel_swi_analyzer)



# enable generation of compile_commands.json, helpful for IDEs to locate include files.
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

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
