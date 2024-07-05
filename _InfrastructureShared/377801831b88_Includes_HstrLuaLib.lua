local L0_0
L0_0 = mp
L0_0 = L0_0.GetHSTRCallerId
L0_0 = L0_0()
if L0_0 ~= mp.HSTR_CALLER_SMS then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = getDetectedRegions
L0_0 = L0_0()
for _FORV_4_, _FORV_5_ in pairs(L0_0) do
  if _FORV_5_.size <= 16384 and (_FORV_5_.prot == 32 or _FORV_5_.prot == 4) and _FORV_5_.state_type == mp.bitor(mp.SMS_MBI_COMMIT, mp.SMS_MBI_PRIVATE) then
    return mp.INFECTED
  end
end
return mp.CLEAN
