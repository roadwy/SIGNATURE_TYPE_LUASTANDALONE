if mp.GetHSTRCallerId() ~= nil and mp.HSTR_CALLER_SMS == mp.GetHSTRCallerId() then
  return mp.INFECTED
end
return mp.LOWFI
