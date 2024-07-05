if mp.HSTR_WEIGHT >= 6 and mp.getfilesize() < 327680 then
  mp.set_mpattribute("PUA:Block:Bundlore.P")
  return mp.INFECTED
end
return mp.LOWFI
