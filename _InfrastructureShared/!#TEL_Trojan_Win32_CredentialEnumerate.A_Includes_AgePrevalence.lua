local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if not MpCommon.QueryPersistContext(L0_0, "SuspCredEnumerateAttempt") then
  return mp.CLEAN
end
if mp.IsTrustedFile(false) == true then
  return mp.CLEAN
end
if getAgePrev(false) <= 1 and getAgePrev(false) <= 100 then
  return mp.INFECTED
end
return mp.CLEAN
