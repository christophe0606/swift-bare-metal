# CMSIS Build CMakeLists generated on 2024-06-16T11:08:35

cmake_minimum_required(VERSION 3.22)

# Target options

set(TARGET test)
set(CPU Cortex-M55)
set(PRJ_DIR "${PROJ}")
set(OUT_DIR "${PROJ}/cprj/out/test/VHT-Corstone-300/Release")
set(INT_DIR "${PROJ}/cprj/tmp/test/VHT-Corstone-300/Release")
set(FPU DP_FPU)
set(DSP DSP)
set(TZ TZ)
set(MVE FP_MVE)
set(DEBUG on)
set(LANGUAGE_CC c11)
set(LANGUAGE_CXX c++17)
set(AS_FLAGS_GLOBAL "-masm=auto")
set(CC_FLAGS_GLOBAL "-Wsign-compare -Wdouble-promotion -DNDEBUG -Wall -Wextra -Werror -std=c11 -Ofast -ffast-math -Wno-packed -Wno-missing-variable-declarations -Wno-missing-prototypes -Wno-missing-noreturn -Wno-sign-conversion -Wno-nonportable-include-path -Wno-reserved-id-macro -Wno-unused-macros -Wno-documentation-unknown-command -Wno-documentation -Wno-parentheses-equality -Wno-reserved-identifier -ffunction-sections -DARM_MATH_LOOPUNROLL -Wno-unknown-attributes -Wno-unused-parameter -Wno-bitfield-constant-conversion -Wno-nan-infinity-disabled")
set(CXX_FLAGS_GLOBAL "-fno-rtti -fno-exceptions -DNDEBUG -Wall -Wextra -std=c++17 -Ofast -ffast-math -Wno-unused-function -ffunction-sections -Wno-unused-parameter -Wno-nan-infinity-disabled -include \"RTE_Components.h\"")
set(LD_FLAGS_GLOBAL "-Wl,-Map=\"${OUT_DIR}/test.elf.map\" -Wl,--gc-sections -lcrt0-semihost -lsemihost")
set(LD_SCRIPT "${PROJ}/linker_scripts/clang_sse300_mps3.sct")
set(LD_REGIONS "${PROJ}/linker_scripts/SSE-300-MPS3/region_defs.h")
set(LD_SCRIPT_PP "${INT_DIR}/clang_sse300_mps3.sct.pp")


set(TOOLCHAIN_PATH "$ENV{HOME}/Library/Developer/Toolchains/swift-latest.xctoolchain/Info.plist")

execute_process(COMMAND /usr/bin/plutil -extract CFBundleIdentifier raw -o - ${TOOLCHAIN_PATH} OUTPUT_VARIABLE TOOLCHAIN OUTPUT_STRIP_TRAILING_WHITESPACE)
execute_process(COMMAND xcrun --toolchain ${TOOLCHAIN} -f swiftc OUTPUT_VARIABLE SWIFTC OUTPUT_STRIP_TRAILING_WHITESPACE)



set(DEFINES
  _RTE_
  ACTIVATION_BUF_SZ=130000
  CORTEXM
  ARMCM55
  VHT
)

set(INC_PATHS
  "${PROJ}"
  "${PROJ}/RTE/Device/SSE-300-MPS3"
  "${PROJ}/RTE/_Release_VHT-Corstone-300"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Include"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/PrivateInclude"
  "${CPACK}/ARM/CMSIS/6.0.0/CMSIS/Core/Include"
  "${CPACK}/ARM/V2M_MPS3_SSE_300_BSP/1.4.0/Board/Device_Definition"
  "${CPACK}/ARM/V2M_MPS3_SSE_300_BSP/1.4.0/Board/Platform"
  "${CPACK}/ARM/V2M_MPS3_SSE_300_BSP/1.4.0/Device/Include"
)

set(CC_SRC_FILES
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/BasicMathFunctions/BasicMathFunctions.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/BasicMathFunctions/BasicMathFunctionsF16.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/BayesFunctions/BayesFunctions.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/BayesFunctions/BayesFunctionsF16.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/CommonTables/CommonTables.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/CommonTables/CommonTablesF16.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/ComplexMathFunctions/ComplexMathFunctions.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/ComplexMathFunctions/ComplexMathFunctionsF16.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/ControllerFunctions/ControllerFunctions.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/DistanceFunctions/DistanceFunctions.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/DistanceFunctions/DistanceFunctionsF16.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/FastMathFunctions/FastMathFunctions.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/FastMathFunctions/FastMathFunctionsF16.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/FilteringFunctions/FilteringFunctions.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/FilteringFunctions/FilteringFunctionsF16.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/InterpolationFunctions/InterpolationFunctions.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/InterpolationFunctions/InterpolationFunctionsF16.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/MatrixFunctions/MatrixFunctions.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/MatrixFunctions/MatrixFunctionsF16.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/QuaternionMathFunctions/QuaternionMathFunctions.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/SVMFunctions/SVMFunctions.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/SVMFunctions/SVMFunctionsF16.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/StatisticsFunctions/StatisticsFunctions.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/StatisticsFunctions/StatisticsFunctionsF16.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/SupportFunctions/SupportFunctions.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/SupportFunctions/SupportFunctionsF16.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/TransformFunctions/TransformFunctions.c"
  "${CPACK}/ARM/CMSIS-DSP/1.15.0/Source/TransformFunctions/TransformFunctionsF16.c"
  "${CPACK}/ARM/V2M_MPS3_SSE_300_BSP/1.4.0/Board/Device_Definition/device_definition.c"
  "${CPACK}/ARM/V2M_MPS3_SSE_300_BSP/1.4.0/Device/Source/syscounter_armv8-m_cntrl_drv.c"
  "${CPACK}/ARM/V2M_MPS3_SSE_300_BSP/1.4.0/Device/Source/syscounter_armv8-m_read_drv.c"
  "${CPACK}/ARM/V2M_MPS3_SSE_300_BSP/1.4.0/Device/Source/systimer_armv8-m_drv.c"
  "${CPACK}/ARM/V2M_MPS3_SSE_300_BSP/1.4.0/Device/Source/systimer_armv8-m_timeout.c"
  "${PROJ}/RTE/Device/SSE-300-MPS3/startup_SSE300MPS3.c"
  "${PROJ}/RTE/Device/SSE-300-MPS3/system_SSE300MPS3.c"
  "${PROJ}/tools.c"
)

# Toolchain config map

set(TOOLCHAIN_VERSION_MIN "18.1.3")
include ("${CTOOLS}/etc/CLANG.18.1.3.cmake")
include ("${CTOOLS}/etc/CMSIS-Build-Utils.cmake")

# Setup project

project(${TARGET} LANGUAGES C)



cbuild_get_running_toolchain(TOOLCHAIN_ROOT TOOLCHAIN_VERSION C)

# Global Flags

cbuild_get_system_includes(CMAKE_C_IMPLICIT_INCLUDE_DIRECTORIES CC_SYS_INC_PATHS)
set(CMAKE_C_FLAGS "${CC_CPU} ${CC_DEFINES} ${CC_OPTIONS_FLAGS} ${CC_FLAGS} ${CC_FLAGS_GLOBAL} ${CC_SYS_INC_PATHS}")
set(CMAKE_C_LINK_FLAGS "${LD_CPU} ${_LS}\"${LD_SCRIPT_PP}\" ${LD_FLAGS_GLOBAL} ${LD_OPTIONS_FLAGS} ${LD_FLAGS}")

# Compilation Database

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
add_custom_target(database COMMAND ${CMAKE_COMMAND} -E copy_if_different "${INT_DIR}/compile_commands.json" "${OUT_DIR}")

# Setup Target

add_executable(${TARGET} ${CC_SRC_FILES})
set_target_properties(${TARGET} PROPERTIES PREFIX "" SUFFIX ".elf" OUTPUT_NAME "test")
set_target_properties(${TARGET} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${OUT_DIR} LINK_DEPENDS ${LD_SCRIPT})
target_include_directories(${TARGET} PUBLIC ${INC_PATHS})

# Linker script pre-processing

add_custom_command(TARGET ${TARGET} PRE_LINK COMMAND ${CPP} ARGS ${CPP_ARGS_LD_SCRIPT} BYPRODUCTS ${LD_SCRIPT_PP})

execute_process(COMMAND echo "$<TARGET_PROPERTY:test,INCLUDE_DIRECTORIES>"
               OUTPUT_VARIABLE SWIFT_INC 
               OUTPUT_STRIP_TRAILING_WHITESPACE)
# -no-allocations to detect and prevent memory allocations in swift
#         $$\( echo '$<TARGET_PROPERTY:test,COMPILE_DEFINITIONS>' | sed 's/;$$/' | tr '\;' '\\n' | sed -e 's/\\\(.*\\\)/-Xcc \\1/g' \)

add_custom_command(
    OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/_swiftcode.o
    COMMAND
        ${SWIFTC}
        -target armv7em-none-none-eabi
        -Xcc -mfloat-abi=hard 
        -Xfrontend -function-sections -enable-experimental-feature Embedded -wmo -parse-as-library -Osize
        -Xcc -fshort-enums
        $$\( echo '$<TARGET_PROPERTY:test,INCLUDE_DIRECTORIES>' | sed 's/;$$//' | tr '\;' '\\n' | sed -e 's/\\\(.*\\\)/-Xcc -I\\1/g' \)
        $$\( echo '${CMAKE_C_IMPLICIT_INCLUDE_DIRECTORIES}'             | tr ' '  '\\n' | sed -e 's/\\\(.*\\\)/-Xcc -I\\1/g'  \)
        -import-bridging-header ${CMAKE_CURRENT_LIST_DIR}/BridgingHeader.h
        ${CMAKE_CURRENT_LIST_DIR}/Main.swift
        -c -o ${CMAKE_CURRENT_BINARY_DIR}/_swiftcode.o
    DEPENDS
        ${CMAKE_CURRENT_LIST_DIR}/BridgingHeader.h
        ${CMAKE_CURRENT_LIST_DIR}/Main.swift
)

add_custom_target(main-swiftcode DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/_swiftcode.o)

target_link_libraries(${TARGET}
    ${CMAKE_CURRENT_BINARY_DIR}/_swiftcode.o
)
add_dependencies(${TARGET} main-swiftcode)
