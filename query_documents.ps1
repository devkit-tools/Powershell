$exts = ".xls",".xls*",".xltx",".od*",".doc",".doc*",".pdf",".pot",".pot*",".pp*"

foreach ($ext in $exts) {
    Write-Host "`nFile extension: $ext"
    Get-ChildItem -Path C:\ -Recurse -Filter $ext -ErrorAction SilentlyContinue |
        Where-Object {$_ -notmatch "lib|fonts|share|core"}
}
