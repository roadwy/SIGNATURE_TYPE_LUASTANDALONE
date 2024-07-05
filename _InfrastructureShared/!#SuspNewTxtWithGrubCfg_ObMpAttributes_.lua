local L0_0, L1_1, L2_2
L0_0 = "MpUefiGrubCheck"
L1_1 = "MpUefiGrubCfg"
L2_2 = "MpUefiSuspTxt"
if MpCommon.QueryPersistContextNoPath(L0_0, L1_1) and MpCommon.QueryPersistContextNoPath(L0_0, L2_2) then
  return mp.INFECTED
end
return mp.CLEAN
