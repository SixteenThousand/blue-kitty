ifeq ($(XDG_CONFIG_DIR),)
	CONFIG_DIR=$(HOME)/.config/kitty
else
	CONFIG_DIR=$(XDG_CONFIG_DIR)/kitty
endif
install:
	ln -s $(PWD) $(CONFIG_DIR)
uninstall:
	rm $(CONFIG_DIR)
