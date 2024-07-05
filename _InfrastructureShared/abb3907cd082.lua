local L0_0
L0_0 = MpCommon
L0_0 = L0_0.ExpandEnvironmentVariables
L0_0 = L0_0("%ProgramData%")
if not sysio.IsFolderExists(L0_0) then
  return mp.CLEAN
end
mp.TriggerScanResource("folder", L0_0)
return mp.INFECTED
