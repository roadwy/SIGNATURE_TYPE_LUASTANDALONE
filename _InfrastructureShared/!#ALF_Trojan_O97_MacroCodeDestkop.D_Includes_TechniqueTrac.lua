local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILEPATH
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L1_1, "\\desktop\\", 1, true)
  if L2_2 == nil then
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L1_1, "\\downloads\\", 1, true)
  elseif L2_2 ~= nil then
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L2_2 = L2_2(mp.CONTEXT_DATA_PROCESS_ID)
    if L2_2 then
      TrackPidAndTechnique(L2_2, "T1566.001 ", "phishingattachment")
    end
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
