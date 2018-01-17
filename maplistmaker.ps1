#Powershell script to fetch all the download urls for the songs in osu song directory
#Writen by Kok Tan (https://github.com/tankoks)


$a = Get-Location
$osupath = (Get-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\osu\shell\open\command).'(default)' | %{$_.split(" ")[0]} | %{$_.Replace("osu!.exe", "Songs")} | %{$_.Replace("`"","") }
dir  $osupath -Directory -name | %{$_.split(' ')[0]} | Foreach-Object{ "https://osu.ppy.sh/d/$_" } >> $a\OsuSongs.txt
