DEMOAP_OBJS += \
	$(LIB_OBJS) \
	demo/access_point.o

DEMOED_OBJS += \
	$(LIB_OBJS) \
	demo/end_device.o

DEMORE_OBJS += \
	$(LIB_OBJS) \
	demo/relay.o

demoap: $(addprefix $(BUILD_DIR)/, $(DEMOAP_OBJS))
	$(CC) $(CFLAGS) $(addprefix $(BUILD_DIR)/, $(DEMOAP_OBJS)) -o \
		$(addprefix $(BUILD_DIR)/, program.elf) $(LFLAGS)
	@echo
	@echo Access Point build complete

demoed: $(addprefix $(BUILD_DIR)/, $(DEMOED_OBJS))
	$(CC) $(CFLAGS) $(addprefix $(BUILD_DIR)/, $(DEMOED_OBJS)) -o \
		$(addprefix $(BUILD_DIR)/, program.elf) $(LFLAGS)
	@echo
	@echo End Device build complete

demore: $(addprefix $(BUILD_DIR)/, $(DEMORE_OBJS))
	$(CC) $(CFLAGS) $(addprefix $(BUILD_DIR)/, $(DEMORE_OBJS)) -o \
		$(addprefix $(BUILD_DIR)/, program.elf) $(LFLAGS)
	@echo
	@echo End Device build complete