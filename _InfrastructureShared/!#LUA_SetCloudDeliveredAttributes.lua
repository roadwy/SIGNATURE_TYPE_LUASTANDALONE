local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.enum_mpattributesubstring
L0_0 = L0_0(L1_1)
if L1_1 == 0 or L0_0 == nil then
  return L1_1
end
for L4_4, L5_5 in L1_1(L2_2) do
  L6_6 = string
  L6_6 = L6_6.match
  L7_7 = L5_5
  L8_8 = "MpCloudSuspicious_(%d*)_(%d*)_(%d*)_(%d*)_(%d*)"
  L10_10 = L6_6(L7_7, L8_8)
  if L6_6 ~= nil and L7_7 ~= nil and L8_8 ~= nil and L9_9 ~= nil and L10_10 ~= nil then
    L6_6 = tonumber(L6_6)
    L7_7 = tonumber(L7_7)
    L8_8 = tonumber(L8_8)
    L9_9 = tonumber(L9_9)
    L10_10 = tonumber(L10_10)
    mp.set_mpattributeex("Cloud:EnsembleV1_Clean:Probability", L6_6)
    mp.set_mpattributeex("Cloud:EnsembleV1_Malware:Probability", L7_7)
    mp.set_mpattributeex("Cloud:FileInfo:Age", L8_8)
    mp.set_mpattributeex("Cloud:FileInfo:Prevalence", L9_9)
    mp.set_mpattributeex("Cloud:FileInfo:Rtp60", L10_10)
    return mp.INFECTED
  end
end
return L1_1
