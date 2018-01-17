#Powershell script to fetch all the download urls for the songs in osu song directory
#Writen by Kok Tan (https://github.com/tankoks)


ls -d */ | cut -d ' ' -f1 | awk '{print "https://osu.ppy.sh/s/"$1}' >> output.txt



$a = Get-Location
$osupath = (Get-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\osu\shell\open\command).'(default)' | %{$_.split(" ")[0]} | %{$_.Replace("osu!.exe", "Songs")} | %{$_.Replace("`"","") }
