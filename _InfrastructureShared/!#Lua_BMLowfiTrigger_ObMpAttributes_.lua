local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
  L0_0 = L0_0(L1_1)
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.getfilesize
    L0_0 = L0_0()
    if L0_0 >= 8388608 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = mp
    L1_1 = L1_1.getfilename
    L2_2 = mp
    L2_2 = L2_2.FILEPATH_QUERY_LOWERCASE
    L1_1 = L1_1(L2_2)
    L2_2 = string
    L2_2 = L2_2.sub
    L3_3 = L1_1
    L2_2 = L2_2(L3_3, L4_4, L5_5)
    if L2_2 == "\\\\?\\" then
      L2_2 = string
      L2_2 = L2_2.sub
      L3_3 = L1_1
      L2_2 = L2_2(L3_3, L4_4)
      L1_1 = L2_2
    end
    L3_3 = L1_1
    L2_2 = L1_1.sub
    L2_2 = L2_2(L3_3, L4_4, L5_5)
    if L2_2 == "\\device\\" then
      L2_2 = MpCommon
      L2_2 = L2_2.PathToWin32Path
      L3_3 = L1_1
      L2_2 = L2_2(L3_3)
      L1_1 = L2_2
      if L1_1 == nil then
        L2_2 = mp
        L2_2 = L2_2.CLEAN
        return L2_2
      end
      L2_2 = string
      L2_2 = L2_2.lower
      L3_3 = L1_1
      L2_2 = L2_2(L3_3)
      L1_1 = L2_2
    end
    L2_2 = {}
    L3_3 = mp
    L3_3 = L3_3.enum_mpattributesubstring
    L3_3 = L3_3(L4_4)
    if L4_4 ~= 0 and L3_3 ~= nil then
      for L7_7, L8_8 in L4_4(L5_5) do
        L9_9 = table
        L9_9 = L9_9.insert
        L10_10 = L2_2
        L9_9(L10_10, L8_8)
      end
    end
    if L5_5 ~= 0 and L4_4 ~= nil then
      for L8_8, L9_9 in L5_5(L6_6) do
        L10_10 = table
        L10_10 = L10_10.insert
        L10_10(L2_2, L9_9)
      end
    end
    if L6_6 ~= 0 and L5_5 ~= nil then
      for L9_9, L10_10 in L6_6(L7_7) do
        table.insert(L2_2, L10_10)
      end
    end
    if L6_6 ~= 0 and L2_2 ~= nil then
      for L9_9, L10_10 in L6_6(L7_7) do
        if not string.find(L10_10, "!rfn", 1, true) and not string.find(L10_10, "HeraklezEval", 1, true) and not string.find(L10_10, "ASRCALL", 1, true) and not MpCommon.QueryPersistContext(L1_1, L10_10) then
          MpCommon.AppendPersistContext(L1_1, L10_10, 180)
        end
      end
    end
    if not L6_6 then
      L7_7(L8_8)
      L9_9 = "BMLowfiTrigger"
      L10_10 = 180
      L7_7(L8_8, L9_9, L10_10)
    end
    return L7_7
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
