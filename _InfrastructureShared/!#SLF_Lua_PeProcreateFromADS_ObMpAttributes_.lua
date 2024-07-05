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
    L0_0 = L0_0.getfilename
    L1_1 = mp
    L1_1 = L1_1.bitor
    L2_2 = mp
    L2_2 = L2_2.bitor
    L2_2 = L2_2(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH)
    L2_2 = L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE)
    L1_1 = L0_0(L1_1, L2_2, L1_1(L2_2, mp.FILEPATH_QUERY_LOWERCASE))
    L2_2 = L1_1.find
    L2_2 = L2_2(L1_1, ":", 1, true)
    if L2_2 then
      L2_2 = L0_0.sub
      L2_2 = L2_2(L0_0, 1, 8)
      if L2_2 == "\\device\\" then
        L2_2 = MpCommon
        L2_2 = L2_2.PathToWin32Path
        L2_2 = L2_2(L0_0)
        L2_2 = L2_2.lower
        L2_2 = L2_2(L2_2)
        L0_0 = L2_2
      end
      L2_2 = L0_0.find
      L2_2 = L2_2(L0_0, "system32\\cngsvc.exe:")
      if L2_2 then
        L2_2 = mp
        L2_2 = L2_2.CLEAN
        return L2_2
      end
      L2_2 = L0_0
      L2_2 = L2_2 .. "\\" .. L1_1
      if not MpCommon.QueryPersistContext(L2_2, "CreateProcFromAlternateDataStream") then
        MpCommon.AppendPersistContext(L2_2, "CreateProcFromAlternateDataStream", 100)
      end
      mp.set_mpattribute("BM_PeFileInAlternateDataStream")
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
