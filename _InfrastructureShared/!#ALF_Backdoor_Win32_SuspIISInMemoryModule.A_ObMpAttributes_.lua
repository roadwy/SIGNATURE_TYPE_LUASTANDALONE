local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_mpattributesubstring
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.enum_mpattributesubstring
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  return L1_1
end
if L1_1 == 0 then
  return L1_1
end
for L4_4, L5_5 in L1_1(L2_2) do
  if string.find(L5_5, "!app_web_", 1, true) ~= nil then
    return mp.CLEAN
  end
  if #L5_5 == 31 and mp.get_mpattribute("LUA:PeFileVersion!0.0.0.0") then
    return mp.CLEAN
  end
end
return L1_1
