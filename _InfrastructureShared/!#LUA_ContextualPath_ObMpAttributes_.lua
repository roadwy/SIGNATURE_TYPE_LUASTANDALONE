local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.enum_mpattributesubstring
  L2_2 = "BM_"
  L1_1 = L1_1(L2_2)
  if L1_1 == nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = mp
  L2_2 = L2_2.enum_mpattributesubstring
  L3_3 = "SLF:"
  L2_2 = L2_2(L3_3)
  if L2_2 == nil then
    L3_3 = mp
    L3_3 = L3_3.getfilename
    L4_4 = mp
    L4_4 = L4_4.bitor
    L4_4 = L4_4(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)
    L3_3 = L3_3(L4_4, L4_4(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE))
    L4_4 = L3_3.sub
    L4_4 = L4_4(L3_3, 2, 9)
    if L4_4 ~= "window" then
      L4_4 = L3_3.sub
      L4_4 = L4_4(L3_3, 2, 9)
      if L4_4 ~= "progra" then
        L4_4 = "Evaluation:"
        L4_4 = L4_4 .. L3_3
        if MpCommon.GetPersistContextCountNoPath(L4_4) > 10 then
          return mp.INFECTED
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
