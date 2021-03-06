arm32-platform-cpuarch		:= cortex-a15
arm32-platform-cflags	 	+= -mcpu=$(arm32-platform-cpuarch)
arm32-platform-aflags	 	+= -mcpu=$(arm32-platform-cpuarch)
core_arm32-platform-aflags	+= -mfpu=neon

$(call force,CFG_ARM32_core,y)
$(call force,CFG_SECURE_TIME_SOURCE_CNTPCT,y)
$(call force,CFG_SUNXI_UART,y)
$(call force,CFG_MMU_V7_TTB,y)
$(call force,CFG_PM_STUBS,y)
$(call force,CFG_GIC,y)

ta-targets = ta_arm32

CFG_NUM_THREADS ?= 4
CFG_TEE_CORE_EMBED_INTERNAL_TESTS ?= y
CFG_WITH_STACK_CANARIES ?= y
CFG_WITH_STATS ?= y
