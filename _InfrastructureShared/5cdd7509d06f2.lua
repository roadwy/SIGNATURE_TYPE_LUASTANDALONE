local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
L1_1 = L0_0.ppid
if L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L0_0.image_path
if L2_2 ~= nil then
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L0_0.image_path
  L2_2 = L2_2(L3_3)
  L3_3 = string
  L3_3 = L3_3.find
  L3_3 = L3_3(L2_2, "\\teamcity\\", 1, true)
  if L3_3 then
    L3_3 = string
    L3_3 = L3_3.sub
    L3_3 = L3_3(L2_2, -8)
    if L3_3 == "java.exe" then
      L3_3 = mp
      L3_3 = L3_3.INFECTED
      return L3_3
    end
  end
end
if L1_1 then
  L2_2 = mp
  L2_2 = L2_2.GetParentProcInfo
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  if L2_2 == nil then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = L2_2.image_path
  if L3_3 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(L2_2.image_path)
    if string.find(L3_3, "\\teamcity\\", 1, true) and string.sub(L3_3, -8) == "java.exe" then
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
