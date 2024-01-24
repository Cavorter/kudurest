$functionPath = Join-Path -Path $PSScriptRoot -ChildPath functions
$functions = Get-ChildItem -Path $functionPath -Include *.ps1 -Exclude *.Tests.ps1

foreach ( $function in $functions ) {
    . $function.FullName
}
