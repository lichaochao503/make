################################################################################
# Automatically-generated file. Do not edit!
################################################################################
CC := gcc
AR = ar
OBJCOPY = objcopy
RM := rm

DIRS := src
3INCS := $(shell find $(DIRS) -name "*.h")
SRCS := $(shell find $(DIRS) -name "*.S" -o -name "*.c")
OBJS := $(SRCS:.c=.o)


ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

# All Target
all: maketest

# Tool invocations
maketest: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MinGW C Linker'
	gcc  -o "maketest" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

%.o: %.S Makefile
	@echo compile $<
	@$(CC) -D__ASSEMBLY__ $(CFLAGS) $(INCS:%='-I%') -MD -c $< -o $@

%.o: %.c Makefile
	@echo compile $<
	@$(CC) $(CFLAGS) $(INCS:%='-I%') -MD -c $< -o $@

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) maketest.exe
	-@echo 'clean finish '

.PHONY: all clean dependents
.SECONDARY:

