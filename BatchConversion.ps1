#Batch Conversion for Filetype With Inputs

$ExitCode = $False
Do{
    $target = Read-Host -Prompt 'Enter the target drive path'
    $OGFile = Read-Host -Prompt 'Input OG File extension'
    $Nfile = Read-Host -Prompt 'Input New File Extension'
    Get-ChildItem $target -filter *$OGfile | Rename-Item -NewName {[System.IO.Path]::ChangeExtension($_.Name, "$Nfile")}
    $Result = Read-Host -Prompt 'Continue? Yes or No'
    If ($Result -eq "No"){
        $ExitCode = $True
    }
} Until ($ExitCode)