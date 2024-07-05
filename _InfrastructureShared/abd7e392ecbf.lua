local L0_0
L0_0 = {}
table.insert(L0_0, "security")
MpCommon.SetPersistContextNoPath("DumpHive.A!security", L0_0, 300)
if MpCommon.GetPersistContextCountNoPath("DumpHive.A!system") > 0 or 0 < MpCommon.GetPersistContextCountNoPath("DumpHive.A!sam") then
  return mp.INFECTED
end
return mp.CLEAN
