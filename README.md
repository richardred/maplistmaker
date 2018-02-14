# maplistmaker

This repository contains three (four, the .exe was simply made from the .py file) ways to compile a list of URLs to one's osu! beatmaps for quick, efficient sharing.
The idea for this arose when a friend requested beatmaps to download. We set up a multiplayer lobby, but it was extremely tedious for me to select songs and wait for
him to download them one by one. Naturally, Google Drive was the next best choice, but the files quickly added up to infeasible sizes and became far too large for my
apartment internet to upload in any reasonable amount of time. So, I decided to write a program to automate this process. The PowerShell script, the shell script, the
python code, as well as the executable file created from the python code all accomplish the same end result: a text file with a link to each beatmap in the
user's Songs folder.

## How to Use

Download the raw files and run the .exe file, or whichever script is preferred. The autoDL version will automatically download the beatmap upon visiting each link.
This will result in a new text file being created on your Windows Desktop with the list of beatmap URLs.

If your osu! folder is not in the default directory `C:\Users\USERNAME\AppData\Local\osu!\Songs`, you will need to manually select the correct file path.

## Built With

* [Pyinstaller](http://www.pyinstaller.org/) - The package used to create standalone .exe files from python code

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

TODO: add manual selection
