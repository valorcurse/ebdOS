USERDIR := $(TOP)$(notdir $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST)))))/
INCDIRS += $(shell find $(USERDIR)$(INCDIR) -type d)
USERSRC := $(USERDIR)$(SRCDIR)
USERASM := $(USERDIR)$(ASMDIR)
USERCFILES := $(wildcard $(USERSRC)*.c)
USERASMFILES := $(wildcard $(USERASM)*.S)
USER_COFILES := $(USERCFILES:%.c=%.c.o)
USER_SOFILES := $(USERASMFILES:%.S=%.S.o)

#Debug part
USERDEBUGDIR := $(USERDIR)$(DEBUG_OBJECTS_DIR)
USERDOFILES := $(patsubst $(USERDIR)$(SRCDIR)%,$(USERDEBUGDIR)%,$(USER_COFILES))
USERDOFILES += $(patsubst $(USERDIR)$(ASMDIR)%,$(USERDEBUGDIR)%,$(USER_SOFILES))
DOFILES += $(USERDOFILES)

#Release part
USERRELEASEDIR := $(USERDIR)$(RELEASE_OBJECTS_DIR)
USERROFILES := $(patsubst $(USERDIR)$(SRCDIR)%,$(USERRELEASEDIR)%,$(USER_COFILES))
USERROFILES += $(patsubst $(USERDIR)$(ASMDIR)%,$(USERRELEASEDIR)%,$(USER_SOFILES))
OFILES += $(USERROFILES)

#Make sure the output paths are created
OBJECTDIRS += $(USERDEBUGDIR) $(USERRELEASEDIR)

$(USERDEBUGDIR)%.c.o $(USERRELEASEDIR)%.c.o: $(USERSRC)%.c
	$(CCRECEIPE)

$(USERDEBUGDIR)%.S.o $(USERRELEASEDIR)%.S.o: $(USERASM)%.S
	$(ASMRECEIPE)
