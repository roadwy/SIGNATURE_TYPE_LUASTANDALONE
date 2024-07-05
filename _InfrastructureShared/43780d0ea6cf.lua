local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSDEVICEPATH
L1_1 = L1_1(L2_2)
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L3_3 = L2_2
L3_3 = L3_3 .. "\\" .. L0_0
mp.set_mpattribute("MpInternal_researchdata=parentProcessPath=" .. L3_3)
return mp.INFECTED
