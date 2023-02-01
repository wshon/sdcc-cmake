# the name of the target operating system
SET(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_C_FLAGS_INIT "-mmcs51 --std-sdcc11")
set(CMAKE_EXE_LINKER_FLAGS_INIT "")

# which compilers to use for C and ASM 
SET(CMAKE_C_COMPILER sdcc)
SET(CMAKE_ASM_COMPILER "sdas8051")

find_program (SDCC NAMES sdcc)
get_filename_component(SDCC_BIN_DIR ${SDCC} DIRECTORY)
get_filename_component(SDCC_PATH_DIR ${SDCC_BIN_DIR} DIRECTORY)

# here is the target environment is located
SET(CMAKE_FIND_ROOT_PATH  ${SDCC_PATH_DIR}/usr/share/sdcc)

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search
# programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# TODO This is not being recognised
set(CMAKE_ASM_OUTPUT_EXTENSION ".rel")
set(CMAKE_ASM_COMPILE_OBJECT "${CMAKE_ASM_COMPILER} -o <OBJECT> <SOURCE>")
