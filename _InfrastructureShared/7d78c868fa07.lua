if mp.GetHSTRCallerId() == nil then
  return mp.CLEAN
end
if mp.GetHSTRCallerId() == mp.HSTR_CALLER_SMS then
  return mp.INFECTED
end
return mp.CLEAN
