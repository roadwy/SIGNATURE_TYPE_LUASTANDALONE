if mp.HSTR_WEIGHT >= 4 then
  mp.set_mpattribute("PUA:Block:TuneupMyMac.C")
  return mp.INFECTED
end
return mp.LOWFI
