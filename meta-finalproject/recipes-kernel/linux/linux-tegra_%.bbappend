# Append to the recipe for building the kernel on Jetson Xavier AGX

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# Include our kernel config fragment and device tree overlay
SRC_URI += " \
    file://sht3x.cfg \
"

# Optional: notify in the build log that our stuff is being used
do_configure:append() {
    bbnote "Added SHT3x config"
}
