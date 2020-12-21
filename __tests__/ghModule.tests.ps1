Describe "Test gh psm1" {
    BeforeAll {
        # if (!(Get-Module -list Microsoft.PowerShell.Crescendo)) {
        #     Install-Module -Name Microsoft.PowerShell.Crescendo -Force
        # }
        
        $ConfigurationFile = "$PSScriptRoot\..\gh*.crescendo.json" 
        $ConfigurationFile | Out-Host

        $ModuleName = "Testdrive:\gh.psm1"
        $ModuleName | Out-Host
        
        Export-CrescendoModule -ConfigurationFile $ConfigurationFile -ModuleName $ModuleName -Force
        Import-Module $ModuleName -Force
    }
    Context "Test code generation worked" {
        It "Tests all functions were created" {
            $actual = Get-Command -Module gh | Sort-Object name
            
            $actual.Count | Should -Be 6
            
            $actual[0].name | Should -BeExactly 'Get-GHGist'
            $actual[1].name | Should -BeExactly 'Get-GHIssue'
            $actual[2].name | Should -BeExactly 'Get-GHPR'
            $actual[3].name | Should -BeExactly 'Get-GHRelease'
            $actual[4].name | Should -BeExactly 'New-GHGist'
            $actual[5].name | Should -BeExactly 'Show-GHRepoOnWeb'
        }
    }
}