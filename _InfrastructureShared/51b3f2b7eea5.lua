if bm.GetSignatureMatchDuration() > 3 * 10000000 then
  return mp.CLEAN
end
return mp.INFECTED
