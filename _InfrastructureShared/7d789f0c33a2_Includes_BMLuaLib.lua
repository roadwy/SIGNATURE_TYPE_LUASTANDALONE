local L0_0
L0_0 = mp
L0_0 = L0_0.GetHSTRCallerId
L0_0 = L0_0()
if isnull(L0_0) or mp.HSTR_CALLER_SMS ~= L0_0 then
  return mp.CLEAN
end
return mp.INFECTED
