# The maintained shared release workflow; --channel is required.
$ErrorActionPreference = 'Stop'
$Root = Split-Path -Parent $PSScriptRoot
$Framework = if ($env:PSXRECOMP_ROOT) { $env:PSXRECOMP_ROOT } else {
    Join-Path $Root 'psxrecomp'
}
& (Join-Path $Framework 'tools/package_title_release.ps1') --root $Root --jobs 2 @args
exit $LASTEXITCODE
