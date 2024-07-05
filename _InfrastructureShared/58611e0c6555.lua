if mp.GetHSTRCallerId() == nil then
  return mp.CLEAN
end
if mp.HSTR_CALLER_SMS == mp.GetHSTRCallerId() then
  if mp.GetSMSProcArchitecture() == nil then
    return mp.CLEAN
  end
  if mp.GetSMSMemRanges() == nil then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
