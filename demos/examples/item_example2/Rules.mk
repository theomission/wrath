# Begin standard header
sp 		:= $(sp).x
dirstack_$(sp)	:= $(d)
d		:= $(dir)
# End standard header


dir := $(d)/shaders
include $(dir)/Rules.mk

DEMOS += item-example2

item-example2_SOURCES := $(call filelist, item_example2.cpp item_packer.cpp item.cpp) $(COMMON_DEMO_SOURCES)

# Begin standard footer
d		:= $(dirstack_$(sp))
sp		:= $(basename $(sp))
# End standard footer
