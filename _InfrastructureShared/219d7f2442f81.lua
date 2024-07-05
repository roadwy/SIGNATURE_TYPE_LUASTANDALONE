local L0_0
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  return mp.CLEAN
end
if mp.GetProcessCommandLine(L0_0) == nil or #mp.GetProcessCommandLine(L0_0) < 900 then
  return mp.CLEAN
end
if mp.GetParentProcInfo() == nil then
  return mp.CLEAN
end
if string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "wscript.exe" then
  if versioning.GetCloudBlockLevel() >= 4 then
    return mp.INFECTED
  end
  return mp.LOWFI
end
return mp.CLEAN
