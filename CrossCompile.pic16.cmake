# the name of the target operating system
SET(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_C_FLAGS_INIT "-mpic16 --std-sdcc11")
set(CMAKE_EXE_LINKER_FLAGS_INIT "")

# which compilers to use for C and ASM 
SET(CMAKE_C_COMPILER sdcc)

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
