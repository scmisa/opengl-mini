# Directories
VCPKG_DIR := /home/$(USER)/vcpkg

# Check if vcpkg is installed
$(VCPKG_DIR)/vcpkg:
    git clone https://github.com/microsoft/vcpkg.git $(VCPKG_DIR)
    cd $(VCPKG_DIR) && ./bootstrap-vcpkg.sh

# Install necessary libraries
install_deps: $(VCPKG_DIR)/vcpkg
    $(VCPKG_DIR)/vcpkg install glfw3:x64-linux glad:x64-linux

.PHONY: install_deps