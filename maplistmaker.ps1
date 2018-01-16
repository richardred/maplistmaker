$a = Get-Location
cd $env:LOCALAPPDATA\osu!\Songs
dir -Directory -name | %{$_.split(' ')[0]} | Foreach-Object{ "https://osu.ppy.sh/s/$_" } >> $a\output.txt