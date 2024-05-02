echo "Updating git submodules"
git submodule update --init --recursive --remote

echo "Building rust lib"
python3 libvpuppr/build.py --debug

echo "Copying gdextension files"
cp libvpuppr/libvpuppr.gdextension .

