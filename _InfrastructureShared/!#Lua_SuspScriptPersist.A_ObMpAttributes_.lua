local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)
L0_0 = L0_0(L1_1, L1_1(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(MpCommon.PathToWin32Path(L0_0))
L0_0 = L1_1
L1_1 = {}
table.insert(L1_1, L0_0)
MpCommon.SetPersistContextNoPath("SuspScriptPersist", L1_1, 0)
return mp.CLEAN
