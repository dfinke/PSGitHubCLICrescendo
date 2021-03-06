# Module created by Microsoft.PowerShell.Crescendo
Function Get-GHGist
{
[CmdletBinding()]

param(    )

BEGIN {
    $__PARAMETERMAP = @{}
    $__outputHandlers = @{
        Default = @{ StreamOutput = $True; Handler = { $input| ConvertFrom-Csv -Delimiter "`t" -Header 'ID', 'Description','Files','Visibility','Date' } }
    }
}
PROCESS {
    $__commandArgs = @(
        "gist"
        "list"
    )
    $__boundparms = $PSBoundParameters
    $MyInvocation.MyCommand.Parameters.Values.Where({$_.SwitchParameter -and $_.Name -notmatch "Debug|Whatif|Confirm|Verbose" -and ! $PSBoundParameters[$_.Name]}).ForEach({$PSBoundParameters[$_.Name] = [switch]::new($false)})
    if ($PSBoundParameters["Debug"]){wait-debugger}
    foreach ($paramName in $PSBoundParameters.Keys|Sort-Object {$__PARAMETERMAP[$_].OriginalPosition}) {
        $value = $PSBoundParameters[$paramName]
        $param = $__PARAMETERMAP[$paramName]
        if ($param) {
            if ( $value -is [switch] ) { $__commandArgs += if ( $value.IsPresent ) { $param.OriginalName } else { $param.DefaultMissingValue } }
            elseif ( $param.NoGap ) { $__commandArgs += "{0}""{1}""" -f $param.OriginalName, $value }
            else { $__commandArgs += $param.OriginalName; $__commandArgs += $value |Foreach-Object {$_}}
        }
    }
    $__commandArgs = $__commandArgs|Where-Object {$_}
    if ($PSBoundParameters["Debug"]){wait-debugger}
    if ( $PSBoundParameters["Verbose"]) {
         Write-Verbose -Verbose -Message gh
         $__commandArgs | Write-Verbose -Verbose
    }
    $__handlerInfo = $__outputHandlers[$PSCmdlet.ParameterSetName]
    if (! $__handlerInfo ) {
        $__handlerInfo = $__outputHandlers["Default"] # Guaranteed to be present
    }
    $__handler = $__handlerInfo.Handler
    if ( $PSCmdlet.ShouldProcess("gh")) {
        if ( $__handlerInfo.StreamOutput ) {
            & "gh" $__commandArgs | & $__handler
        }
        else {
            $result = & "gh" $__commandArgs
            & $__handler $result
        }
    }
  } # end PROCESS

<#
.SYNOPSIS
unknown shorthand flag: '?' in -?
System.Management.Automation.RemoteException
Usage:  gh <command> <subcommand> [flags]
System.Management.Automation.RemoteException
Available commands:
  alias
  api
  auth
  completion
  config
  gist
  help
  issue
  pr
  release
  repo
  secret
System.Management.Automation.RemoteException

.DESCRIPTION See help for gh

#>
}

Function Get-GHIssue
{
[CmdletBinding()]

param(    )

BEGIN {
    $__PARAMETERMAP = @{}
    $__outputHandlers = @{
        Default = @{ StreamOutput = $True; Handler = { 
            foreach($item in $input) {
                $parts = $item -Split "`t"
                [PSCustomObject][Ordered]@{
                    'ID'=$parts[0]
                    'Status'=$parts[1]
                    'Description'=$parts[2]
                    'Label'=$parts[3]
                    'Date'=$parts[4]
                }
            }            
             } }
    }
}
PROCESS {
    $__commandArgs = @(
        "issue"
        "list"
        "--state"
        "all"
    )
    $__boundparms = $PSBoundParameters
    $MyInvocation.MyCommand.Parameters.Values.Where({$_.SwitchParameter -and $_.Name -notmatch "Debug|Whatif|Confirm|Verbose" -and ! $PSBoundParameters[$_.Name]}).ForEach({$PSBoundParameters[$_.Name] = [switch]::new($false)})
    if ($PSBoundParameters["Debug"]){wait-debugger}
    foreach ($paramName in $PSBoundParameters.Keys|Sort-Object {$__PARAMETERMAP[$_].OriginalPosition}) {
        $value = $PSBoundParameters[$paramName]
        $param = $__PARAMETERMAP[$paramName]
        if ($param) {
            if ( $value -is [switch] ) { $__commandArgs += if ( $value.IsPresent ) { $param.OriginalName } else { $param.DefaultMissingValue } }
            elseif ( $param.NoGap ) { $__commandArgs += "{0}""{1}""" -f $param.OriginalName, $value }
            else { $__commandArgs += $param.OriginalName; $__commandArgs += $value |Foreach-Object {$_}}
        }
    }
    $__commandArgs = $__commandArgs|Where-Object {$_}
    if ($PSBoundParameters["Debug"]){wait-debugger}
    if ( $PSBoundParameters["Verbose"]) {
         Write-Verbose -Verbose -Message gh
         $__commandArgs | Write-Verbose -Verbose
    }
    $__handlerInfo = $__outputHandlers[$PSCmdlet.ParameterSetName]
    if (! $__handlerInfo ) {
        $__handlerInfo = $__outputHandlers["Default"] # Guaranteed to be present
    }
    $__handler = $__handlerInfo.Handler
    if ( $PSCmdlet.ShouldProcess("gh")) {
        if ( $__handlerInfo.StreamOutput ) {
            & "gh" $__commandArgs | & $__handler
        }
        else {
            $result = & "gh" $__commandArgs
            & $__handler $result
        }
    }
  } # end PROCESS

<#
.SYNOPSIS
unknown shorthand flag: '?' in -?
System.Management.Automation.RemoteException
Usage:  gh <command> <subcommand> [flags]
System.Management.Automation.RemoteException
Available commands:
  alias
  api
  auth
  completion
  config
  gist
  help
  issue
  pr
  release
  repo
  secret
System.Management.Automation.RemoteException

.DESCRIPTION See help for gh

#>
}

Function Get-GHPR
{
[CmdletBinding()]

param(    )

BEGIN {
    $__PARAMETERMAP = @{}
    $__outputHandlers = @{
        Default = @{ StreamOutput = $True; Handler = { $input | ConvertFrom-Csv -Delimiter "`t" -Header 'PR', 'Description','User' } }
    }
}
PROCESS {
    $__commandArgs = @(
        "pr"
        "list"
    )
    $__boundparms = $PSBoundParameters
    $MyInvocation.MyCommand.Parameters.Values.Where({$_.SwitchParameter -and $_.Name -notmatch "Debug|Whatif|Confirm|Verbose" -and ! $PSBoundParameters[$_.Name]}).ForEach({$PSBoundParameters[$_.Name] = [switch]::new($false)})
    if ($PSBoundParameters["Debug"]){wait-debugger}
    foreach ($paramName in $PSBoundParameters.Keys|Sort-Object {$__PARAMETERMAP[$_].OriginalPosition}) {
        $value = $PSBoundParameters[$paramName]
        $param = $__PARAMETERMAP[$paramName]
        if ($param) {
            if ( $value -is [switch] ) { $__commandArgs += if ( $value.IsPresent ) { $param.OriginalName } else { $param.DefaultMissingValue } }
            elseif ( $param.NoGap ) { $__commandArgs += "{0}""{1}""" -f $param.OriginalName, $value }
            else { $__commandArgs += $param.OriginalName; $__commandArgs += $value |Foreach-Object {$_}}
        }
    }
    $__commandArgs = $__commandArgs|Where-Object {$_}
    if ($PSBoundParameters["Debug"]){wait-debugger}
    if ( $PSBoundParameters["Verbose"]) {
         Write-Verbose -Verbose -Message gh
         $__commandArgs | Write-Verbose -Verbose
    }
    $__handlerInfo = $__outputHandlers[$PSCmdlet.ParameterSetName]
    if (! $__handlerInfo ) {
        $__handlerInfo = $__outputHandlers["Default"] # Guaranteed to be present
    }
    $__handler = $__handlerInfo.Handler
    if ( $PSCmdlet.ShouldProcess("gh")) {
        if ( $__handlerInfo.StreamOutput ) {
            & "gh" $__commandArgs | & $__handler
        }
        else {
            $result = & "gh" $__commandArgs
            & $__handler $result
        }
    }
  } # end PROCESS

<#
.SYNOPSIS
unknown shorthand flag: '?' in -?
System.Management.Automation.RemoteException
Usage:  gh <command> <subcommand> [flags]
System.Management.Automation.RemoteException
Available commands:
  alias
  api
  auth
  completion
  config
  gist
  help
  issue
  pr
  release
  repo
  secret
System.Management.Automation.RemoteException

.DESCRIPTION See help for gh

#>
}

Function Get-GHRelease
{
[CmdletBinding()]

param(    )

BEGIN {
    $__PARAMETERMAP = @{}
    $__outputHandlers = @{
        Default = @{ StreamOutput = $True; Handler = { 
            foreach($item in $input) {
                $parts = $item -Split "`t"
                [PSCustomObject][Ordered]@{
                    'Title'=$parts[0]
                    'Tag'=$parts[2]
                    'Date'=$parts[3]
                }
            }
             } }
    }
}
PROCESS {
    $__commandArgs = @(
        "release"
        "list"
    )
    $__boundparms = $PSBoundParameters
    $MyInvocation.MyCommand.Parameters.Values.Where({$_.SwitchParameter -and $_.Name -notmatch "Debug|Whatif|Confirm|Verbose" -and ! $PSBoundParameters[$_.Name]}).ForEach({$PSBoundParameters[$_.Name] = [switch]::new($false)})
    if ($PSBoundParameters["Debug"]){wait-debugger}
    foreach ($paramName in $PSBoundParameters.Keys|Sort-Object {$__PARAMETERMAP[$_].OriginalPosition}) {
        $value = $PSBoundParameters[$paramName]
        $param = $__PARAMETERMAP[$paramName]
        if ($param) {
            if ( $value -is [switch] ) { $__commandArgs += if ( $value.IsPresent ) { $param.OriginalName } else { $param.DefaultMissingValue } }
            elseif ( $param.NoGap ) { $__commandArgs += "{0}""{1}""" -f $param.OriginalName, $value }
            else { $__commandArgs += $param.OriginalName; $__commandArgs += $value |Foreach-Object {$_}}
        }
    }
    $__commandArgs = $__commandArgs|Where-Object {$_}
    if ($PSBoundParameters["Debug"]){wait-debugger}
    if ( $PSBoundParameters["Verbose"]) {
         Write-Verbose -Verbose -Message gh
         $__commandArgs | Write-Verbose -Verbose
    }
    $__handlerInfo = $__outputHandlers[$PSCmdlet.ParameterSetName]
    if (! $__handlerInfo ) {
        $__handlerInfo = $__outputHandlers["Default"] # Guaranteed to be present
    }
    $__handler = $__handlerInfo.Handler
    if ( $PSCmdlet.ShouldProcess("gh")) {
        if ( $__handlerInfo.StreamOutput ) {
            & "gh" $__commandArgs | & $__handler
        }
        else {
            $result = & "gh" $__commandArgs
            & $__handler $result
        }
    }
  } # end PROCESS

<#
.SYNOPSIS
unknown shorthand flag: '?' in -?
System.Management.Automation.RemoteException
Usage:  gh <command> <subcommand> [flags]
System.Management.Automation.RemoteException
Available commands:
  alias
  api
  auth
  completion
  config
  gist
  help
  issue
  pr
  release
  repo
  secret
System.Management.Automation.RemoteException

.DESCRIPTION See help for gh

#>
}

Function New-GHGist
{
[CmdletBinding()]

param(
[Parameter(Position=0,Mandatory=$true)]
[string]$Description,
[Parameter(Position=1,Mandatory=$true)]
[string[]]$Path,
[Parameter()]
[switch]$Public,
[Parameter()]
[switch]$Online
    )

BEGIN {
    $__PARAMETERMAP = @{
        Description = @{ OriginalName = '--desc'; OriginalPosition = '1'; Position = '0'; ParameterType = [string]; NoGap = $False }
        Path = @{ OriginalName = ''; OriginalPosition = '0'; Position = '1'; ParameterType = [string[]]; NoGap = $False }
        Public = @{ OriginalName = '--public'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
        Online = @{ OriginalName = '--web'; OriginalPosition = '0'; Position = '2147483647'; ParameterType = [switch]; NoGap = $False }
    }

    $__outputHandlers = @{ Default = @{ StreamOutput = $true; Handler = { $input } } }
}
PROCESS {
    $__commandArgs = @(
        "gist"
        "create"
    )
    $__boundparms = $PSBoundParameters
    $MyInvocation.MyCommand.Parameters.Values.Where({$_.SwitchParameter -and $_.Name -notmatch "Debug|Whatif|Confirm|Verbose" -and ! $PSBoundParameters[$_.Name]}).ForEach({$PSBoundParameters[$_.Name] = [switch]::new($false)})
    if ($PSBoundParameters["Debug"]){wait-debugger}
    foreach ($paramName in $PSBoundParameters.Keys|Sort-Object {$__PARAMETERMAP[$_].OriginalPosition}) {
        $value = $PSBoundParameters[$paramName]
        $param = $__PARAMETERMAP[$paramName]
        if ($param) {
            if ( $value -is [switch] ) { $__commandArgs += if ( $value.IsPresent ) { $param.OriginalName } else { $param.DefaultMissingValue } }
            elseif ( $param.NoGap ) { $__commandArgs += "{0}""{1}""" -f $param.OriginalName, $value }
            else { $__commandArgs += $param.OriginalName; $__commandArgs += $value |Foreach-Object {$_}}
        }
    }
    $__commandArgs = $__commandArgs|Where-Object {$_}
    if ($PSBoundParameters["Debug"]){wait-debugger}
    if ( $PSBoundParameters["Verbose"]) {
         Write-Verbose -Verbose -Message gh
         $__commandArgs | Write-Verbose -Verbose
    }
    $__handlerInfo = $__outputHandlers[$PSCmdlet.ParameterSetName]
    if (! $__handlerInfo ) {
        $__handlerInfo = $__outputHandlers["Default"] # Guaranteed to be present
    }
    $__handler = $__handlerInfo.Handler
    if ( $PSCmdlet.ShouldProcess("gh")) {
        if ( $__handlerInfo.StreamOutput ) {
            & "gh" $__commandArgs | & $__handler
        }
        else {
            $result = & "gh" $__commandArgs
            & $__handler $result
        }
    }
  } # end PROCESS

<#
.SYNOPSIS
unknown shorthand flag: '?' in -?
System.Management.Automation.RemoteException
Usage:  gh <command> <subcommand> [flags]
System.Management.Automation.RemoteException
Available commands:
  alias
  api
  auth
  completion
  config
  gist
  help
  issue
  pr
  release
  repo
  secret
System.Management.Automation.RemoteException

.DESCRIPTION See help for gh

.PARAMETER Description
Description of gist


.PARAMETER Path
file(s) containing content for gist


.PARAMETER Public
Make the gist public


.PARAMETER Online
Open the new gist in browser



#>
}

Function Show-GHRepoOnWeb
{
[CmdletBinding()]

param(    )

BEGIN {
    $__PARAMETERMAP = @{}
    $__outputHandlers = @{ Default = @{ StreamOutput = $true; Handler = { $input } } }
}
PROCESS {
    $__commandArgs = @(
        "repo"
        "view"
        "--web"
    )
    $__boundparms = $PSBoundParameters
    $MyInvocation.MyCommand.Parameters.Values.Where({$_.SwitchParameter -and $_.Name -notmatch "Debug|Whatif|Confirm|Verbose" -and ! $PSBoundParameters[$_.Name]}).ForEach({$PSBoundParameters[$_.Name] = [switch]::new($false)})
    if ($PSBoundParameters["Debug"]){wait-debugger}
    foreach ($paramName in $PSBoundParameters.Keys|Sort-Object {$__PARAMETERMAP[$_].OriginalPosition}) {
        $value = $PSBoundParameters[$paramName]
        $param = $__PARAMETERMAP[$paramName]
        if ($param) {
            if ( $value -is [switch] ) { $__commandArgs += if ( $value.IsPresent ) { $param.OriginalName } else { $param.DefaultMissingValue } }
            elseif ( $param.NoGap ) { $__commandArgs += "{0}""{1}""" -f $param.OriginalName, $value }
            else { $__commandArgs += $param.OriginalName; $__commandArgs += $value |Foreach-Object {$_}}
        }
    }
    $__commandArgs = $__commandArgs|Where-Object {$_}
    if ($PSBoundParameters["Debug"]){wait-debugger}
    if ( $PSBoundParameters["Verbose"]) {
         Write-Verbose -Verbose -Message gh
         $__commandArgs | Write-Verbose -Verbose
    }
    $__handlerInfo = $__outputHandlers[$PSCmdlet.ParameterSetName]
    if (! $__handlerInfo ) {
        $__handlerInfo = $__outputHandlers["Default"] # Guaranteed to be present
    }
    $__handler = $__handlerInfo.Handler
    if ( $PSCmdlet.ShouldProcess("gh")) {
        if ( $__handlerInfo.StreamOutput ) {
            & "gh" $__commandArgs | & $__handler
        }
        else {
            $result = & "gh" $__commandArgs
            & $__handler $result
        }
    }
  } # end PROCESS

<#
.SYNOPSIS
unknown shorthand flag: '?' in -?
System.Management.Automation.RemoteException
Usage:  gh <command> <subcommand> [flags]
System.Management.Automation.RemoteException
Available commands:
  alias
  api
  auth
  completion
  config
  gist
  help
  issue
  pr
  release
  repo
  secret
System.Management.Automation.RemoteException

.DESCRIPTION See help for gh

#>
}

Export-ModuleMember -Function Get-GHGist, Get-GHIssue, Get-GHPR, Get-GHRelease, New-GHGist, Show-GHRepoOnWeb
