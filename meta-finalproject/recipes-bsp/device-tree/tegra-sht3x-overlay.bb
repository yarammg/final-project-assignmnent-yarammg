DESCRIPTION = "Device tree overlay for SHT3x sensor on Jetson"
LICENSE = "MIT"
SRC_URI = "file://tegra-sht3x-overlay.dts"
S = "${WORKDIR}"

do_compile() {
    dtc -@ -I dts -O dtb -o tegra-sht3x-overlay.dtbo tegra-sht3x-overlay.dts
}

do_install() {
    install -d ${D}/boot/overlays
    install -m 0644 tegra-sht3x-overlay.dtbo ${D}/boot/overlays/
}

FILES:${PN} += "/boot/overlays/tegra-sht3x-overlay.dtbo"

