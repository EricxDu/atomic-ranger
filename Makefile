BOOM_WAD = powersuit.wad
CHOCOLATE_DEH = powersuit-cd.deh
CHOCOLATE_SPRITES = powersuit-sprites.wad
CHOCOLATE_WAD = powersuit-cd.wad
BOOM_RUNNER = powersuit.run
CHOCOLATE_RUNNER = powersuit-cd.run

normal: config/everything.wadinfo
	$(RM) $(BOOM_WAD)
	deutex -doom2 config -make config/everything.wadinfo $(BOOM_WAD)
	$(file > $(BOOM_RUNNER), boom -file powersuit.wad)

chocolate: config/nosprites.wadinfo config/allsprites.wadinfo
	$(RM) $(CHOCOLATE_WAD)
	$(RM) $(CHOCOLATE_SPRITES)
	$(RM) $(CHOCOLATE_DEH)
	deutex -doom2 config -make config/nosprites.wadinfo $(CHOCOLATE_WAD)
	deutex -doom2 config -make config/allsprites.wadinfo $(CHOCOLATE_SPRITES)
	$(file > $(CHOCOLATE_DEH),$(file < lumps/chocolate.deh))
	$(file > $(CHOCOLATE_RUNNER), chocolate-doom -file powersuit-cd.wad -as powersuit-sprites.wad -deh lumps/chocolate.deh)

clean:
	$(RM) -f $(BOOM_WAD) $(CHOCOLATE_WAD)
	$(RM) -f $(CHOCOLATE_SPRITES) $(CHOCOLATE_DEH)
	$(RM) -f statusbar.wad statusbar.deh
	$(RM) -f weapons.wad weapon-sounds.wad weapon-sprites.wad
