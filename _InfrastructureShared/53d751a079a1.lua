local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.image_path
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(string.match(L1_1, "\\([^\\]+)$"))
if L2_2 == nil or L2_2 == "" then
  return mp.CLEAN
end
if string.find(L2_2, "tomcat%d.exe") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
