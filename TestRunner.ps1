[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

$here = Split-Path -Path "C:\Users\spartaguest\temp\*"
Import-Module $here\RestAPI.psm1
Import-Module Pester

$StarWarsBaseUrl = 'https://swapi.co/api/'
$GoTBaseUrl = 'https://anapioficeandfire.com/api/'

Set-ApiBaseUrl -Url $StarWarsBaseUrl

Invoke-Pester "$here\Tests1.ps1" -Verbose:$VerbosePreference 

Set-ApiBaseUrl -Url $GoTBaseUrl

Invoke-Pester "$here\GoTTests.ps1" -Verbose:$VerbosePreference 