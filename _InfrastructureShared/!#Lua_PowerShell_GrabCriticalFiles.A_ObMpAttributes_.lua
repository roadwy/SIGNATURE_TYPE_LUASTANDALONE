local L0_0
L0_0 = 0
if mp.get_mpattribute("SCRIPT:StringCredentialSubstring") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:StringFileExtensionOffice") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:StringFileExtensionArchive") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:StringFileExtensionImage") then
  L0_0 = L0_0 + 1
end
if mp.get_mpattribute("SCRIPT:StringFileExtensionAdobe") then
  L0_0 = L0_0 + 1
end
if L0_0 == 5 then
  return mp.INFECTED
end
if L0_0 >= 2 then
  mp.set_mpattribute("Lua:PowerShell/GrabCriticalFiles.B")
end
return mp.CLEAN
