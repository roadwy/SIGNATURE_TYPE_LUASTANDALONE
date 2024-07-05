local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 == L1_1 then
  L0_0 = pe
  L0_0 = L0_0.get_exports
  L1_1 = L0_0()
  for L5_5 = 1, L0_0 do
    L6_6 = L1_1[L5_5]
    L6_6 = L6_6.fn
    if L6_6 == 2934435936 then
      L6_6 = mp
      L6_6 = L6_6.get_contextdata
      L6_6 = L6_6(mp.CONTEXT_DATA_PROCESS_PPID)
      if L6_6 then
        MpCommon.RequestSmsOnProcess(L6_6, MpCommon.SMS_SCAN_MED)
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
