# Bugfix for missing Launcher
**Important:** this bugfix is only provided for an installation with _umake_ where currently no launcher will be added correctly.

My general advice is not to install visual-studio-code via umake without _root_ permissions.

The bash script simply adds the _visual-studio-code.desktop_ file to the  ~/.local/share/applications directory.
Just execute the script with the user who not alteady has a visual-studio-code launcher.

## Sources:

[General solution](https://askubuntu.com/questions/749085/umake-no-visual-studio-code-launcher-icon "Launcher-Bugfix")

[Visual-Studio-Code](https://code.visualstudio.com/ "Visual-Studio-Code homepage")
