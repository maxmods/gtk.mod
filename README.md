# gtk.mod
GTK+3 MaxGUI Collection

# Ubuntu Install

gtk3webkitgtk.mod depends on libwebkitgtk-3.0-dev.

gtk3maxgui.mod depends on libpango1.0-dev which now depends on libharfbuzz-dev.

gtk3webkitgtk.mod depends on libpng12-0. Ubuntu has removed this from their repository, to fix:
```
sudo add-apt-repository ppa:linuxuprising/libpng12
sudo apt update
sudo apt install libpng12-0
```

