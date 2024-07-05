local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_CONTROL_GUID
L1_1 = L0_0(L1_1, L2_2)
L2_2 = pcall
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_SCANREASON
L3_3 = L2_2(L3_3, L4_4)
if L0_0 then
  L4_4 = string
  L4_4 = L4_4.match
  L5_5 = L1_1
  L4_4 = L4_4(L5_5, "cafeefac%-dec7%-0000%-0001%-abcdeffedcba")
  if not L4_4 then
    L4_4 = string
    L4_4 = L4_4.match
    L5_5 = L1_1
    L4_4 = L4_4(L5_5, "08b0e5c0%-4fcb%-11cf%-aaa5%-00401c608501")
    if not L4_4 then
      L4_4 = string
      L4_4 = L4_4.match
      L5_5 = L1_1
      L4_4 = L4_4(L5_5, "d27cdb6e%-ae6d%-11cf%-96b8%-444553540000")
      if not L4_4 then
        L4_4 = string
        L4_4 = L4_4.match
        L5_5 = L1_1
        L4_4 = L4_4(L5_5, "dfeaf541%-f3e1%-4c24%-acac%-99c30715084a")
      end
    end
  elseif L4_4 then
    L4_4 = pcall
    L5_5 = mp
    L5_5 = L5_5.get_contextdata
    L5_5 = L4_4(L5_5, mp.CONTEXT_DATA_FRAME_URL)
    if L4_4 and (string.sub(L5_5, -3) == "/?1" or string.sub(L5_5, -3) == "/?2" or string.sub(L5_5, -3) == "/?3" or string.sub(L5_5, -3) == "/?4") then
      if L2_2 and L3_3 ~= mp.SCANREASON_VALIDATION_PRESCAN then
        mp.aggregate_mpattribute("Context:FrameNumeralParam")
      end
      mp.aggregate_mpattribute("//MpIsIEVScan")
      return mp.TRUE
    end
  end
end
L4_4 = mp
L4_4 = L4_4.FALSE
return L4_4
