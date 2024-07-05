local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.enum_mpattributesubstring
L1_1 = "SCPT:ClnWordsCat1"
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.enum_mpattributesubstring
L2_2 = "SCPT:ClnWordsCat2"
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.enum_mpattributesubstring
L3_3 = "SCPT:ClnWordsCat3"
L2_2 = L2_2(L3_3)
L3_3 = #L0_0
if not (L3_3 >= 1) then
  L3_3 = #L1_1
  if not (L3_3 >= 5) then
    L3_3 = #L2_2
  end
elseif L3_3 >= 3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.enum_mpattributesubstring
L4_4 = "SCPT:RansomNote"
L3_3 = L3_3(L4_4)
L4_4 = #L3_3
if L4_4 < 1 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.GetBruteMatchData
L4_4 = L4_4()
L5_5 = L4_4.match_offset
if L4_4.is_footer then
  L5_5 = mp.getfilesize() - mp.FOOTERPAGE_SZ + L5_5
end
if Infrastructure_CryptoSearcher(L5_5) == true then
  mp.set_mpattribute("MpInternal_researchdata=threat=ransom")
  return mp.INFECTED
end
return mp.CLEAN
