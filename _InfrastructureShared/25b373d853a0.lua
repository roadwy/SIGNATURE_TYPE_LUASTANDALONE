if bm.GetSignatureMatchDuration() < 10000000 then
  return mp.INFECTED
end
return mp.CLEAN
