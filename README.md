Uses [Microsoft.PowerShell.Crescendo](https://github.com/PowerShell/Crescendo) to create a PowerShell module for the [GitHub Cli](https://github.com/cli/cli).

It calls the native `gh.exe` and participates in the PowerShell pipeline.

|Function|Description|
|---|---|
|Get-GHGist|List your gists
|Get-GHPR|List pull requests in this repository
|Get-GHRelease|List releases in a repository
|Show-GHRepoOnWeb|Open a repository in the browser