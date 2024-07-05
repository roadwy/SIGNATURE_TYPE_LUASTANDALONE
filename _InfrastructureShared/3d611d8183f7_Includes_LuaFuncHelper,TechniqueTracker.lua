local L0_0
L0_0 = mp
L0_0 = L0_0.GetHSTRCallerId
L0_0 = L0_0()
if L0_0 ~= mp.HSTR_CALLER_SMS then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if not L0_0 then
  return mp.CLEAN
end
if IsKeyInRollingQueue("InitiateMemQuery", L0_0, true) or IsDetectionThresholdMet(L0_0) then
  MpCommon.BmTriggerSig(L0_0, "TriggerMemQuery", "TriggerMemQuery")
  return mp.INFECTED
end
return mp.CLEAN
