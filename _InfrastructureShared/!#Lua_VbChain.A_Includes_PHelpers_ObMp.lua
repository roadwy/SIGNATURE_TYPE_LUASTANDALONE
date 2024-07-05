local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
  L0_0 = L0_0(L1_1)
  if L0_0 == true then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    L1_1 = MpCommon
    L1_1 = L1_1.QueryPersistContextNoPath
    L2_2 = "CLF_AM"
    L1_1 = L1_1(L2_2, L3_3)
    if L1_1 then
      L1_1 = mp
      L0_0 = L1_1.INFECTED
    end
    L1_1 = false
    L2_2 = MpCommon
    L2_2 = L2_2.QueryPersistContextNoPath
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 then
      L1_1 = true
    end
    L2_2 = MpCommon
    L2_2 = L2_2.QueryPersistContextNoPath
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 then
      L1_1 = true
    end
    if L1_1 then
      L2_2 = MpCommon
      L2_2 = L2_2.GetPersistContextNoPath
      L2_2 = L2_2(L3_3)
      for L6_6, L7_7 in L3_3(L4_4) do
        mp.ReportLowfi(L7_7, 1933116662)
      end
      L0_0 = L3_3.INFECTED
    end
    L2_2 = mp
    L2_2 = L2_2.INFECTED
    if L0_0 == L2_2 then
      L2_2 = mp
      L2_2 = L2_2.INFECTED
      return L2_2
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
