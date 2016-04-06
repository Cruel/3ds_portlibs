# the name of the target operating system
SET(CMAKE_SYSTEM_NAME Generic)

# some var defines
SET(DEVKITARM /opt/devkitpro/devkitARM)
SET(DEVKITPRO /opt/devkitpro)
SET(CTRULIB ${DEVKITPRO}/libctru)

# which compilers to use for C and C++
SET(CMAKE_C_COMPILER $ENV{DEVKITARM}/bin/arm-none-eabi-gcc)
SET(CMAKE_CXX_COMPILER $ENV{DEVKITARM}/bin/arm-none-eabi-g++)
SET(CMAKE_SIZE $ENV{DEVKITARM}/bin/arm-none-eabi-size)
SET(CMAKE_OBJCOPY $ENV{DEVKITARM}/bin/arm-none-eabi-objcopy)

# set the path to look for libs/includes
SET(CMAKE_FIND_ROOT_PATH ${DEVKITARM} ${DEVKITPRO} ${CTRULIB} ${DEVKITPRO}/portlibs/armv6k )

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search 
# programs in the host environment
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# might not be needed...
include_directories(
	${DEVKITPRO}/portlibs/3ds/include
	${DEVKITPRO}/portlibs/armv6k/include
	${CTRULIB}/include
)

# flags!
SET(ARCH "-march=armv6k -mtune=mpcore -mfloat-abi=hard -mtp=soft")
SET(CPP3DS_ARM_FLAGS "-g -O2 ${ARCH} -ffunction-sections -fdata-sections")
SET(CPP3DS_TEST_FLAGS "-g -O2")
SET(CPP3DS_EMU_FLAGS "-g -O2")
