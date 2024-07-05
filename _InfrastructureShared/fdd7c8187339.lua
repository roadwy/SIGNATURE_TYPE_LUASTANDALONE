local L0_0, L1_1
L0_0 = {}
L1_1 = MpCommon
L1_1 = L1_1.GetCurrentTimeT
L1_1 = L1_1()
table.insert(L0_0, L1_1)
MpCommon.SetPersistContextNoPath("TaskSchedMiscTrigger", L0_0, 3)
return mp.CLEAN
