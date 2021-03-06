VALIDATIONDIR := $(TOP)$(notdir $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST)))))/
VALIDATIONINC := $(shell find $(VALIDATIONDIR)$(INCDIR) -type d)
VALIDATIONSRC := $(VALIDATIONDIR)$(SRCDIR)
VALIDATIONASM := $(VALIDATIONDIR)$(ASMDIR)
VALIDATIONCFILES := $(wildcard $(VALIDATIONSRC)*.c)
VALIDATIONASMFILES := $(wildcard $(VALIDATIONASM)*.S)
VALIDATION_COFILES := $(VALIDATIONCFILES:%.c=%.c.o)
VALIDATION_SOFILES := $(VALIDATIONASMFILES:%.S=%.S.o)

#Debug part
VALIDATIONDEBUGDIR := $(VALIDATIONDIR)$(DEBUG_OBJECTS_DIR)
VALIDATIONDOFILES := $(patsubst $(VALIDATIONDIR)$(SRCDIR)%,$(VALIDATIONDEBUGDIR)%,$(VALIDATION_COFILES))
VALIDATIONDOFILES += $(patsubst $(VALIDATIONDIR)$(SRCDIR)%,$(VALIDATIONDEBUGDIR)%,$(VALIDATION_SOFILES))
DOFILES += $(VALIDATIONDOFILES)
ALLOFILES += $(VALIDATIONDOFILES)

#Release part
VALIDATIONRELEASEDIR := $(VALIDATIONDIR)$(RELEASE_OBJECTS_DIR)
VALIDATIONROFILES := $(patsubst $(VALIDATIONDIR)$(SRCDIR)%,$(VALIDATIONRELEASEDIR)%,$(VALIDATION_COFILES))
VALIDATIONROFILES += $(patsubst $(VALIDATIONDIR)$(SRCDIR)%,$(VALIDATIONRELEASEDIR)%,$(VALIDATION_SOFILES))
OFILES += $(VALIDATIONROFILES)
ALLOFILES += $(VALIDATIONROFILES)

#Make sure the output paths are created
OBJECTDIRS += $(VALIDATIONDEBUGDIR) $(VALIDATIONRELEASEDIR)

$(VALIDATIONDEBUGDIR)%.c.o: $(VALIDATIONSRC)%.c
	$(CC) $(CFLAGS) -I$(VALIDATIONINC) -c $< -o $@

$(VALIDATIONRELEASEDIR)%.c.o: $(VALIDATIONSRC)%.c
	$(CC) $(CFLAGS) -I$(VALIDATIONINC) -c $< -o $@

$(VALIDATIONDEBUGDIR)%.S.o: $(VALIDATIONASM)%.S
	$(ASMRECEIPE)

$(VALIDATIONRELEASEDIR)%.S.o: $(VALIDATIONASM)%.S
	$(ASMRECEIPE)
