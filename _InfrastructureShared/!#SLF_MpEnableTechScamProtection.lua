local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = MpCommon
L0_0 = L0_0.NidSearch
L1_1 = mp
L1_1 = L1_1.NID_ENABLE_EXTENDED_BAFS
L2_2 = 5
L0_0 = L0_0(L1_1, L2_2)
if L0_0 then
  L0_0 = {}
  L0_0["677e004c-862d-46a1-8cd7-2e37087bec9e"] = true
  L0_0.logmein = true
  L0_0.teamviewer = true
  L0_0.rescueassist = true
  L0_0.gotomeeting = true
  L1_1 = {}
  L1_1[".exe"] = true
  L1_1[".msi"] = true
  L2_2 = mp
  L2_2 = L2_2.getfilename
  L3_3 = mp
  L3_3 = L3_3.bitor
  L4_4 = mp
  L4_4 = L4_4.bitor
  L5_5 = mp
  L5_5 = L5_5.FILEPATH_QUERY_FNAME
  L4_4 = L4_4(L5_5, L6_6)
  L5_5 = mp
  L5_5 = L5_5.FILEPATH_QUERY_LOWERCASE
  L9_9 = L3_3(L4_4, L5_5)
  L3_3 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L3_3(L4_4, L5_5))
  L4_4 = false
  L5_5 = false
  for L9_9, _FORV_10_ in L6_6(L7_7) do
    if L3_3:find(L9_9, 1, true) ~= nil then
      L4_4 = true
    end
  end
  for L9_9, _FORV_10_ in L6_6(L7_7) do
    if L3_3:find(L9_9, 1, true) ~= nil then
      L5_5 = true
    end
  end
  if L4_4 == true and L5_5 == true then
    return L6_6
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
