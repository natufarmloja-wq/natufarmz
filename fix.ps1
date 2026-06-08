$lines = Get-Content 'c:\Users\Pc Gamer\Desktop\site.NatuFarm\index.html' -Encoding UTF8
$prefix = Get-Content 'c:\Users\Pc Gamer\Desktop\site.NatuFarm\prefix.html' -Encoding UTF8
$newLines = @()
$newLines += $lines[0..7]
$newLines += $prefix
$newLines += $lines[15..($lines.Count - 1)]
Set-Content -Path 'c:\Users\Pc Gamer\Desktop\site.NatuFarm\index.html' -Value $newLines -Encoding UTF8
