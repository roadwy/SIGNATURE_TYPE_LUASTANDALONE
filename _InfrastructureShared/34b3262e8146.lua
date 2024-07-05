local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = "base64_plist_creation"
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L0_0 = L2_2.utf8p2
end
if L0_0 ~= nil then
  L2_2 = MpCommon
  L2_2 = L2_2.GetPersistContextCountNoPath
  L2_2 = L2_2(L3_3)
  if L2_2 > 0 then
    L2_2 = MpCommon
    L2_2 = L2_2.GetPersistContextNoPath
    L2_2 = L2_2(L3_3)
    for L6_6, L7_7 in L3_3(L4_4) do
      if string.find(L0_0, L7_7, 1, true) then
        return mp.INFECTED
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
