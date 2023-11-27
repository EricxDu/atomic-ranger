normal: config/everything.wadinfo
	$(RM) powersuit.wad
	deutex -doom2 config -make config/everything.wadinfo powersuit.wad

chocolate: config/nosprites.wadinfo config/allsprites.wadinfo
	$(RM) powersuit.wad
	$(RM) powersuit-sprites.wad
	$(RM) powersuit.deh
	deutex -doom2 config -make config/nosprites.wadinfo powersuit-cd.wad
	deutex -doom2 config -make config/allsprites.wadinfo powersuit-sprites.wad
	$(file > powersuit.deh,$(file < lumps/chocolate.deh))
	$(file > chocolate-powersuit.run,$(file < dist/chocolate-powersuit.txt))

clean:
	$(RM) -f powersuit.wad powersuit-cd.wad powersuit-sprites.wad powersuit.deh statusbar.wad statusbar.deh weapons.wad weapon-sounds.wad weapon-sprites.wad powersuit.run chocolate-powersuit.run

statusbar: config/statusbar.wadinfo lumps/statusbar.deh
	$(RM) statusbar.wad
	$(RM) statusbar.deh
	deutex -doom2 config -make config/statusbar.wadinfo statusbar.wad
	$(file > statusbar.deh,$(file < lumps/statusbar.deh))

weapons: config/weapons.wadinfo config/weapon-sprites.wadinfo config/weapon-sounds.wadinfo
	$(RM) weapons.wad
	$(RM) weapon-sounds.wad
	$(RM) weapon-sprites.wad
	deutex -doom2 config -make config/weapons.wadinfo weapons.wad
	deutex -doom2 config -make config/weapon-sounds.wadinfo weapon-sounds.wad
	deutex -doom2 config -make config/weapon-sprites.wadinfo weapon-sprites.wad
