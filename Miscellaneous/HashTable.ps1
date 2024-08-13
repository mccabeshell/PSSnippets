#Hash Tables

$ADComputer = Get-ADComputer -Filter 'Name -like "*mycomputer*"' -Properties name,operatingsystem |
    Select-Object @{l='mememe';e={$_.name}},@{n='OSVersion';e={$_.OperatingSystem}}