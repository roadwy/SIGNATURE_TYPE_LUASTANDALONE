local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(string.match(L0_0.image_path, "\\([^\\]+)$"))
if L1_1 ~= "razerinstaller.exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L1_1 = L1_1(L0_0.ppid)
if L1_1 == "" or L1_1 == nil then
  return mp.CLEAN
end
if string.find(string.lower(L1_1), "razerinstaller%.exe[^/]+/showdevice$") == nil then
  return mp.CLEAN
end
return mp.INFECTED
