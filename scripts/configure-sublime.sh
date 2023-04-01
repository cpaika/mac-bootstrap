CONFIG_PATH="$HOME/Library/Application Support/Sublime Text"

# Create the necessary directories
mkdir -p "${CONFIG_PATH}/Installed Packages"
mkdir -p "${CONFIG_PATH}/Packages/User"

# Install Package Control
PACKAGE_CONTROL_URL="https://packagecontrol.io/Package%20Control.sublime-package"
curl -fsSL "$PACKAGE_CONTROL_URL" -o "${CONFIG_PATH}/Installed Packages/Package Control.sublime-package"

# Create Package Control settings file to automatically install Rust Enhanced
cat > "${CONFIG_PATH}/Packages/User/Package Control.sublime-settings" << EOL
{
    "installed_packages":
    [
        "Rust Enhanced"
    ]
}
EOL