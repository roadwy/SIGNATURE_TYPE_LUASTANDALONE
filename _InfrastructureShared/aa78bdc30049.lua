if mp.GetHSTRCallerId() == nil then
  return mp.CLEAN
end
if mp.HSTR_CALLER_SMS == mp.GetHSTRCallerId() then
  return mp.INFECTED
end
mp.set_mpattribute("SLF:Win64/BruterShell.A")
return mp.LOWFI
