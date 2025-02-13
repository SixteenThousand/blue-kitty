CONFIG_DIR=$(HOME)/.config/kitty
DESKTOP_FILES_DIR=$(HOME)/.local/share/applications
install:
	ln -s $(PWD) $(CONFIG_DIR)
	ln -s $(PWD)/term-file-manager.desktop $(DESKTOP_FILES_DIR)
uninstall:
	rm $(CONFIG_DIR) $(DESKTOP_FILES_DIR)/term-file-manager.desktop

build: kitty.conf
	kill -SIGUSR1 $(KITTY_PID)
