local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
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
    L0_0 = {}
    L0_0.BM_Process_Hacker_EXE = ""
    L1_1, L2_2 = nil, nil
    for L6_6, L7_7 in L3_3(L4_4) do
      if mp.get_mpattribute(L6_6) then
        L1_1 = L6_6
        L2_2 = string.lower(L7_7)
        break
      end
    end
    if L1_1 == nil or L2_2 == nil then
      return L3_3
    end
    L7_7 = L4_4(L5_5)
    if L3_3 == nil then
      return L4_4
    end
    if L4_4 > 0 and L2_2 == L3_3 then
      return L4_4
    end
    L6_6 = L4_4
    L7_7 = 1
    if L5_5 == "\\device\\" then
      L6_6 = L4_4
      if L4_4 == nil then
        return L5_5
      end
      L6_6 = L4_4
    end
    L6_6 = L4_4
    L7_7 = 1
    if L5_5 == "\\\\?\\" then
      L6_6 = L4_4
      L7_7 = 5
    end
    L6_6 = "\\"
    L7_7 = L3_3
    L6_6 = "CheckPossibleDllSideLoadingA"
    L7_7 = MpCommon
    L7_7 = L7_7.QueryPersistContext
    L7_7 = L7_7(L5_5, L6_6)
    if not L7_7 then
      MpCommon.AppendPersistContext(L5_5, L6_6, 100)
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
