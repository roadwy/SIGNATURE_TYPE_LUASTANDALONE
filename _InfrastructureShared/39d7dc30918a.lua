local L0_0
L0_0 = MpCommon
L0_0 = L0_0.GetPersistContextNoPath
L0_0 = L0_0("dllhijack_winbio_A")
if L0_0 and next(L0_0) ~= nil and L0_0[2] ~= nil and sysio.IsFileExists(L0_0[2]) then
  return mp.INFECTED
end
return mp.CLEAN
