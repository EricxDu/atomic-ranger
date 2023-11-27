# Atomic Ranger

An aesthetic mod for Doom game engines, Atomic Ranger puts the player in a suit of powered armor.

Due to the size of the project, Atomic Ranger is being developed in parts. Each part can consist of graphics, sprites, and sounds. The Makefile uses DeuTeX source file and combination features to build each part as a separate WAD, then combine them into a single WAD. Optionally, the final WAD can be split into three files for compatibility with Chocolate Doom.

## Requirements

Building Atomic Ranger requires [DeuTeX](https://github.com/Doom-Utils/deutex) and GNU Make. Playing Atomic Ranger requires a Doom source port like PrBoom or Chocolate Doom and an IWAD like `doom2.wad` or `freedoom2.wad`.

## Building

Simply use Make to compose the WAD.

    make

If you intend to play with Chocolate Doom, invoke make with the `chocolate` target.

    make chocolate

## Playing

Most Doom source ports interpret the same command-line arguments for loading an IWAD and additional files. The following is an example that works on Debian GNU/Linux after installing PrBoom+ or DSDA-Doom.

    boom -iwad freedoom2.wad -file statusbar.wad

If you are using Chocolate Doom, starting Atomic Ranger takes a few extra commands to invoke the game with the extra compatibility files.

    chocolate-doom -iwad freedoom1.wad -file statusbar.wad -deh statusbar.deh
