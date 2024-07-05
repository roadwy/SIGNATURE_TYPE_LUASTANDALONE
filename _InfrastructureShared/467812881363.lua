if mp.GetHSTRCallerId() == nil then
  return mp.CLEAN
end
if mp.HSTR_CALLER_SMS == mp.GetHSTRCallerId() then
  return mp.INFECTED
end
mp.set_mpattribute("HSTR:CobaltStrike.F!entry")
return mp.LOWFI
