local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("ValidDigitalSignature")
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("Lua:IsNotLegacyOrgMachine")
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_FILEPATH)
if string.find(L0_0:lower(), "\\program files", 1, true) ~= nil or string.find(L0_0:lower(), ":\\windows\\", 1, true) ~= nil or string.find(L0_0:lower(), "process", 1, true) ~= nil or string.find(L0_0:lower(), "recycle.bin", 1, true) ~= nil or string.find(L0_0:lower(), "visualcron", 1, true) ~= nil or string.find(L0_0:lower(), "cyoptics", 1, true) ~= nil then
  return mp.CLEAN
end
if string.sub(L0_0, -4) == ".exe" or string.sub(L0_0, -4) == ".dll" then
  return mp.INFECTED
end
return mp.CLEAN
