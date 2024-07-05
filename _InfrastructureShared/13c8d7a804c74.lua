if mp.HSTR_WEIGHT >= 3 then
  mp.set_mpattribute("PUA:Block:BackTrack.C")
  return mp.INFECTED
end
return mp.LOWFI
