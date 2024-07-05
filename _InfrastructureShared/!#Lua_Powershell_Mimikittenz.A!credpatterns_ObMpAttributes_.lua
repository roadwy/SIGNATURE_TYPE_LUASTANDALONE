local L0_0
L0_0 = 0
if mp.get_mpattribute("SCRIPT:PowerShell/Mimikittenz.A!email") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mimikittenz.A!webservices") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mimikittenz.A!accounting") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mimikittenz.A!social") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mimikittenz.A!antiforensics") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mimikittenz.A!remote") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:PowerShell/Mimikittenz.A!dev") then
  L0_0 = L0_0 + 1
end
if L0_0 == 1 then
  mp.set_mpattribute("Lua:Powershell/Mimikittenz.A!credpattern")
end
if L0_0 == 2 then
  mp.set_mpattribute("Lua:Powershell/Mimikittenz.A!credpattern2")
end
if L0_0 >= 3 then
  return mp.INFECTED
end
return mp.CLEAN
