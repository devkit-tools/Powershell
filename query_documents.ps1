$exts = "*.xls","*.xltx","*.od*","*.doc","*.doc*","*.pdf","*.pot","*.pot*","*.pp*","*.do"

foreach ($ext in $exts) {
    Write-Host "`nFile extension: $ext"
    Get-ChildItem -Path C:\ -Recurse -Include $ext -File -ErrorAction SilentlyContinue |
        Where-Object { $_.FullName -notmatch "lib|fonts|share|core" } |
        Select-Object FullName
}
