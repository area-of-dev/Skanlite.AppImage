SOURCE="https://s3-eu-central-1.amazonaws.com/ds9-apps/skanlite-master-appimage/skanlite-git20170201-x86_64.AppImage"
OUTPUT="Skanlite.AppImage"

all:
	echo "Building: $(OUTPUT)"
	wget --output-document=$(OUTPUT) --continue $(SOURCE)
	chmod +x $(OUTPUT)
	7z x  $(OUTPUT) -o./AppDir
	chmod +x ./AppDir/AppRun
	chmod +x ./AppDir/skanlite.desktop
	chmod +x ./AppDir/usr/bin/*
	rm -rf $(OUTPUT)
	export ARCH=x86_64 && ./bin/appimagetool.AppImage AppDir $(OUTPUT)

