################################################################################
# Automatically-generated file. Do not edit!
################################################################################
CC := gcc
RM := rm

#DIRS := src header
3INCS := $(shell find $(DIRS) -name "*.h")
#SRCS := $(shell find $(DIRS) -name "*.S" -o -name "*.c")
#OBJS := $(SRCS:.c=.o)
#OBJS := $(OBJS:.S=.o)

# All Target
all: maketest

# Tool invocations
maketest: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MinGW C Linker'
	gcc  -o "maketest" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) maketest
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

