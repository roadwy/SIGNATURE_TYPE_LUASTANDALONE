local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.image_path
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = string
L3_3 = L3_3.match
L4_4 = L1_1
L5_5 = "\\([^\\]+)$"
L5_5 = L3_3(L4_4, L5_5)
L2_2 = L2_2(L3_3, L4_4, L5_5, L3_3(L4_4, L5_5))
if L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L2_2 ~= "cmd.exe" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L0_0.ppid
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.GetParentProcInfo
L5_5 = L3_3
L4_4 = L4_4(L5_5)
if L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = L4_4.image_path
if L5_5 == nil then
  return mp.CLEAN
end
if string.lower(string.match(L5_5, "\\([^\\]+)$")) == nil or string.lower(string.match(L5_5, "\\([^\\]+)$")) == "" then
  return mp.CLEAN
end
if string.lower(string.match(L5_5, "\\([^\\]+)$")) ~= "powershell.exe" then
  return mp.CLEAN
end
return mp.INFECTED
