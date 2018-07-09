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

add_library(atmel_swi_analyzer SHARED ${SOURCES})
target_link_libraries(atmel_swi_analyzer PRIVATE Saleae::AnalyzerSDK)

if(MSVC)
    install(TARGETS atmel_swi_analyzer RUNTIME DESTINATION "Analyzers")
else()
    install(TARGETS atmel_swi_analyzer LIBRARY DESTINATION "Analyzers")
endif()

set_post_build_destination(atmel_swi_analyzer)
