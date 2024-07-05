local L0_0, L1_1, L2_2, L3_3
L0_0 = 0
L1_1 = 0
L2_2 = {}
L3_3 = nri
L3_3 = L3_3.GetConnectionHistory
L3_3 = L3_3()
for _FORV_7_, _FORV_8_ in pairs(L3_3) do
  if _FORV_8_.DestinationPort == 3389 then
    if L2_2[_FORV_8_.DestinationAddressLow] == nil then
      L2_2[_FORV_8_.DestinationAddressLow] = 1
      L1_1 = L1_1 + 1
    end
    L0_0 = L0_0 + 1
  end
end
if L1_1 > 5 or L0_0 > 10 then
  return mp.INFECTED
end
return mp.CLEAN
