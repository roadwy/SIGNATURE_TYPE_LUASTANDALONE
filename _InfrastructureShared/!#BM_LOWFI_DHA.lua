local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = mp
L0_0 = L0_0.get_mpattributesubstring
L1_1 = "!dha"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattributesubstring
  L1_1 = "ALF:"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattributesubstring
    L1_1 = "SLF:"
    L0_0 = L0_0(L1_1)
    if not L0_0 then
      L0_0 = mp
      L0_0 = L0_0.get_mpattributesubstring
      L1_1 = "TEL:"
      L0_0 = L0_0(L1_1)
      if not L0_0 then
        L0_0 = mp
        L0_0 = L0_0.get_mpattributesubstring
        L1_1 = "ALFPER:"
        L0_0 = L0_0(L1_1)
        if not L0_0 then
          L0_0 = mp
          L0_0 = L0_0.get_mpattributesubstring
          L1_1 = "SLFPER:"
          L0_0 = L0_0(L1_1)
          if not L0_0 then
            L0_0 = mp
            L0_0 = L0_0.get_mpattributesubstring
            L1_1 = "TELPER:"
            L0_0 = L0_0(L1_1)
          end
        end
      end
    end
  elseif L0_0 then
    L0_0 = {
      L1_1,
      L2_2,
      L3_3,
      L4_4,
      L5_5,
      L6_6
    }
    L1_1 = "ALF:"
    L5_5 = "SLFPER:"
    L6_6 = "TELPER:"
    L1_1 = "!dha"
    for L5_5, L6_6 in L2_2(L3_3) do
      L7_7 = mp
      L7_7 = L7_7.enum_mpattributesubstring
      L7_7 = L7_7(L8_8)
      for L11_11, L12_12 in L8_8(L9_9) do
        L13_13 = L12_12.sub
        L13_13 = L13_13(L12_12, -#L1_1)
        if L13_13 == L1_1 then
          L13_13 = mp
          L13_13 = L13_13.getfilename
          L13_13 = L13_13(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
          if L13_13 == nil then
            return mp.INFECTED
          end
          L13_13 = MpCommon.PathToWin32Path(L13_13)
          if L13_13 == nil then
            return mp.INFECTED
          end
          if string.find(L13_13, "->") then
            L13_13 = string.sub(L13_13, 1, string.find(L13_13, "->") - 1)
          end
          MpCommon.SetOriginalFileName(L13_13, L12_12)
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
