local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = L0_0.match_offset
L1_1 = L1_1 + 17
L2_2 = mp
L2_2 = L2_2.getfilesize
L2_2 = L2_2()
L3_3 = L0_0._is_footer
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.FOOTERPAGE_SZ
  L3_3 = L2_2 - L3_3
  L1_1 = L3_3 + L1_1
end
L3_3 = mp
L3_3 = L3_3.readprotection
L3_3(L4_4)
L3_3 = mp
L3_3 = L3_3.readfile
L3_3 = L3_3(L4_4, L5_5)
L4_4(L5_5)
if L1_1 ~= nil then
  for L7_7 in L4_4(L5_5, L6_6) do
    if L7_7 ~= nil and L7_7 ~= "" then
      mp.vfo_add_buffer("CWSHACK\000" .. MpCommon.Base64Decode(L7_7), "[PyMacZlib]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    end
  end
end
return L4_4
