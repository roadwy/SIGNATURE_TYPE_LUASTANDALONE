if bm.GetSignatureMatchDuration() > 60000000 then
  return mp.CLEAN
end
return mp.INFECTED
