local L0_0, L1_1, L2_2, L3_3
L0_0 = {}
L0_0["winword.exe"] = true
L0_0["excel.exe"] = true
L0_0["powerpnt.exe"] = true
L0_0["outlook.exe"] = true
L1_1 = mp
L1_1 = L1_1.GetParentProcInfo
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L1_1.image_path
  L2_2 = L2_2(L3_3)
  L3_3 = L2_2.match
  L3_3 = L3_3(L2_2, "([^\\]+)$")
  if L0_0[L3_3] then
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.GetParentProcInfo
L3_3 = L1_1.ppid
L2_2 = L2_2(L3_3)
if L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(L2_2.image_path)
  if L0_0[string.sub(L3_3, -15):match("\\([^\\]+)$")] then
    return mp.INFECTED
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
