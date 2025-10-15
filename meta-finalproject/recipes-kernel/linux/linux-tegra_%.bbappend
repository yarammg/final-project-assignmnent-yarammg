# Append to the recipe for building the kernel on Jetson Xavier AGX

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# Include our kernel config fragment and device tree overlay
SRC_URI += " \
    file://sht3x.cfg \
    file://tegra-sht3x-overlay.dts \
"

# Add the config fragment using kernel features
KERNEL_FEATURES:append = " features/sht3x"

# Add the device tree overlay
KERNEL_DEVICETREE:append = " tegra-sht3x-overlay.dtb"

# Optional: notify in the build log that our stuff is being used
do_configure:append() {
    bbnote "Using SHT3x kernel fragment and device tree overlay"
}
