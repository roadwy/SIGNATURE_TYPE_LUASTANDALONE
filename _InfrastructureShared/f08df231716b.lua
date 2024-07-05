if mp.HSTR_WEIGHT >= 14 then
  mp.set_mpattribute("PUA:Block:HistGrabber.C")
  return mp.INFECTED
end
return mp.LOWFI
