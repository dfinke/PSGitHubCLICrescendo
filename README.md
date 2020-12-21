## Continuous Integration Status

|CI|Status|
|---|---|
|GitHub Action|[![.github/workflows/ci.yml](https://github.com/dfinke/PSGitHubCLICrescendo/workflows/.github/workflows/ci.yml/badge.svg)](https://github.com/dfinke/PSGitHubCLICrescendo/actions)|

## GH PowerShell Module
Uses [Microsoft.PowerShell.Crescendo](https://github.com/PowerShell/Crescendo) to create a PowerShell module for the [GitHub Cli](https://github.com/cli/cli).

It calls the native `gh.exe` and participates in the PowerShell pipeline.

|Function|Description|
|---|---|
|Get-GHGist|List your gists
|Get-GHIssue|List issues in a repository
|Get-GHPR|List pull requests in this repository
|Get-GHRelease|List releases in a repository
|New-GHGist|Create a new GitHub gist with given contents
|Show-GHRepoOnWeb|Open a repository in the browser

## How to build

```powershell
Export-CrescendoModule -ConfigurationFile .\gh*.crescendo.json -ModuleName gh.psm1 -Force
```