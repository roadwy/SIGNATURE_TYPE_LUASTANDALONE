if mp.HSTR_WEIGHT >= 4 then
  mp.set_mpattribute("PUA:Block:VSearch.G")
  return mp.INFECTED
end
return mp.LOWFI
