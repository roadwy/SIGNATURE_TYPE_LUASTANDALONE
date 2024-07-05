if mp.HSTR_WEIGHT >= 5 then
  mp.set_mpattribute("PUA:Block:HiddenAd.A")
  return mp.INFECTED
end
return mp.LOWFI
