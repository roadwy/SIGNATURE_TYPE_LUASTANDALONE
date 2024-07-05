if mp.GetHSTRCallerId() == nil then
  return mp.CLEAN
end
if mp.HSTR_CALLER_SMS == mp.GetHSTRCallerId() then
  reportDetectedRegions()
  return mp.INFECTED
end
return mp.LOWFI
