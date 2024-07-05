local L0_0
L0_0 = 0
if mp.get_mpattribute("SCRIPT:PowerShell/Invoke-CheckLocalAdminAccess") or mp.get_mpattribute("TEL:SCPT_LCSuspiPSPattern68") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Invoke-ThreadedFunction") or mp.get_mpattribute("TEL:SCPT_LCSuspiPSPattern169") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Find-LocalAdminAccess") or mp.get_mpattribute("TEL:SCPT_LCSuspiPSPattern24") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Get-ExploitableSystem") or mp.get_mpattribute("TEL:SCPT_LCSuspiPSPattern209") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Invoke-ThreadedFunction") or mp.get_mpattribute("TEL:SCPT_LCSuspiPSPattern169") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("TEL:SCPT_LCSuspiPSPattern150") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("TEL:SCPT_LCSuspiPSPattern45") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCPT_HCSuspiPSPattern") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("TEL:SCPT_LCSuspiPSPattern143") then
  L0_0 = L0_0 + 1
end
if L0_0 >= 4 then
  return mp.INFECTED
end
return mp.CLEAN
