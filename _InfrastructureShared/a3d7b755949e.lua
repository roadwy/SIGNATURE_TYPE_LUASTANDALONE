local L0_0
L0_0 = {}
table.insert(L0_0, "system")
MpCommon.SetPersistContextNoPath("DumpHive.A!system", L0_0, 300)
if MpCommon.GetPersistContextCountNoPath("DumpHive.A!security") > 0 or 0 < MpCommon.GetPersistContextCountNoPath("DumpHive.A!sam") then
  return mp.INFECTED
end
return mp.CLEAN
