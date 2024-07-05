local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.match
L2_2 = L2_2(L1_1, "msiexec%.?e?x?e?\"?'?%s+(.*)$")
if contains(L2_2, {".msi", ".exe"}) then
  return mp.CLEAN
end
if mp.GetParentProcInfo() == nil then
  return mp.CLEAN
end
if string.lower(string.sub(mp.GetParentProcInfo().image_path, -7)) ~= "cmd.exe" then
  return mp.CLEAN
end
if mp.GetProcessCommandLine(mp.GetParentProcInfo().ppid) ~= nil and string.match(mp.GetProcessCommandLine(mp.GetParentProcInfo().ppid):lower(), "^%s*cmd%s*$") then
  return mp.INFECTED
end
return mp.CLEAN
