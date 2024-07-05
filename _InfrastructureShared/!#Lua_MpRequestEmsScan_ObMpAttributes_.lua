local L0_0, L1_1, L2_2
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
    L0_0 = L0_0.get_mpattributevalue
    L1_1 = "MpRequestEmsScanTrigger"
    L0_0 = L0_0(L1_1)
    if L0_0 == 0 then
      L0_0 = 5000
    end
    L1_1 = mp
    L1_1 = L1_1.getfilename
    L2_2 = mp
    L2_2 = L2_2.bitor
    L2_2 = L2_2(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)
    L1_1 = L1_1(L2_2, L2_2(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
    L2_2 = MpCommon
    L2_2 = L2_2.PathToWin32Path
    L2_2 = L2_2(L1_1)
    L2_2 = L2_2.lower
    L2_2 = L2_2(L2_2)
    L1_1 = L2_2
    L2_2 = {}
    table.insert(L2_2, L0_0 .. "_" .. L1_1)
    MpCommon.SetPersistContextNoPath("Lua:MpRequestEmsScan", L2_2, 3)
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
