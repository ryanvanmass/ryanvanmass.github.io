Write-Output "primaryEmail,isEnrolledIn2Sv" >> users.csv
gam print users is2svenrolled | Select-String False | Out-File users.csv -Append
gam csv users.csv gam user ~primaryEmail signout