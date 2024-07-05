local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 ~= mp.SCANREASON_AMSI then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("SLFPER:MSIL/Quiltran.H!amsi")
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
if L0_0 ~= nil then
  MpCommon.RequestSmsOnProcess(L0_0, MpCommon.SMS_SCAN_MED)
end
return mp.INFECTED
