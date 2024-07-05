local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if string.find(L0_0, "\\program files", 1, true) then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(L0_0, "SuspCredEnumerateAttempt") then
  MpCommon.AppendPersistContext(L0_0, "SuspCredEnumerateAttempt", 0)
end
if not MpCommon.QueryPersistContext(L0_0, "queryAgePrev") then
  MpCommon.AppendPersistContext(L0_0, "queryAgePrev", 0)
end
return mp.INFECTED
