local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L1_1 = L1_1(mp.CONTEXT_DATA_NEWLYCREATEDHINT)
  if L1_1 == true then
    L1_1 = mp
    L1_1 = L1_1.get_contextdata
    L1_1 = L1_1(mp.CONTEXT_DATA_PROCESS_PPID)
    if L1_1 ~= nil then
      MpCommon.RequestSmsOnProcess(L1_1, MpCommon.SMS_SCAN_MED)
    end
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
