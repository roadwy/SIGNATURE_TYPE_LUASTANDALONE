if mp.HSTR_WEIGHT >= 4 and mp.getfilesize() < 327680 then
  mp.set_mpattribute("PUA:Block:Bundlore.R")
  return mp.INFECTED
end
return mp.LOWFI
