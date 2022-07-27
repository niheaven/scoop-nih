#Requires -Modules @{ ModuleName = 'Pester'; MaximumVersion = '4.99' }

<#
.SYNOPSIS
    Execute Pester tests in repository root directory.
#>

$result = Invoke-Pester "$PSScriptRoot\.." -PassThru

exit $result.FailedCount
