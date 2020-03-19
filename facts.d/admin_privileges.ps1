$admgroup = Get-LocalGroupMember Administrators -ErrorAction SilentlyContinue
$admins = ($admgroup | Select-Object Name).Name | ConvertTo-Json
write-Output "{admin_privileges: $admins}"