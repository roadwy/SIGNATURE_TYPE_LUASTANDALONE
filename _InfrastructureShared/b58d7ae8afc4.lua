if mp.HSTR_WEIGHT >= 2 then
  mp.set_mpattribute("PUA:Block:Searchproxy.D")
  return mp.INFECTED
end
return mp.LOWFI
