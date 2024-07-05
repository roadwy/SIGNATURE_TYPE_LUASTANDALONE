local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.InternalName
L2_2 = L0_0.OriginalFilename
if L1_1 then
  L3_3(L4_4)
  for L6_6 = 32, 47 do
    L7_7 = string
    L7_7 = L7_7.format
    L7_7 = L7_7("%c%c%c%c", L6_6, L6_6, L6_6, L6_6)
    if string.find(L1_1, L7_7, 1, true) ~= nil then
      mp.set_mpattribute("LUA:PEAnomaly_SpecialInternalName")
      break
    end
  end
end
if L2_2 then
  for L6_6 = 32, 47 do
    L7_7 = string
    L7_7 = L7_7.format
    L7_7 = L7_7("%c%c%c%c", L6_6, L6_6, L6_6, L6_6)
    if string.find(L2_2, L7_7, 1, true) ~= nil then
      mp.set_mpattribute("LUA:PEAnomaly_SpecialOrigName")
      break
    end
  end
end
return L3_3
