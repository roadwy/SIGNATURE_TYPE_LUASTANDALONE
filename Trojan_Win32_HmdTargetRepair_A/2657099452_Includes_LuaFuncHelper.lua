local L0_0, L1_1, L2_2, L3_3
L0_0 = "hmdprecisionpulse"
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_FILEPATH
L3_3 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3))
L2_2 = string
L2_2 = L2_2.lower
L3_3 = mp
L3_3 = L3_3.get_contextdata
L3_3 = L3_3(mp.CONTEXT_DATA_FILENAME)
L2_2 = L2_2(L3_3, L3_3(mp.CONTEXT_DATA_FILENAME))
L3_3 = string
L3_3 = L3_3.format
L3_3 = L3_3("%s\\%s", L1_1, L2_2)
if pcall(MpCommon.RollingQueueQueryKeyNamespaced, "hmdprecisionpulseregkeyvaluescan", L0_0, L3_3) and pcall(MpCommon.RollingQueueQueryKeyNamespaced, "hmdprecisionpulseregkeyvaluescan", L0_0, L3_3) then
  return mp.INFECTED
end
return mp.CLEAN
