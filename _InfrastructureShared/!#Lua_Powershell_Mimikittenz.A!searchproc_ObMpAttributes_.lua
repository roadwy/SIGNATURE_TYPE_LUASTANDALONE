local L0_0
L0_0 = 0
if mp.get_mpattribute("SCRIPT:PowerShell/Mimikittenz.A!searchproc_sysinfo") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mimikittenz.A!searchproc_address") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mimikittenz.A!searchproc_region") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mimikittenz.A!searchproc_readmemory") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mimikittenz.A!searchproc_regexloop") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mimikittenz.A!searchproc_regexmatch") then
  L0_0 = L0_0 + 1
end
if L0_0 >= 5 then
  return mp.INFECTED
end
return mp.CLEAN
