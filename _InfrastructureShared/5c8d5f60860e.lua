if mp.HSTR_WEIGHT >= 4 then
  mp.set_mpattribute("PUA:Block:Skypelogger.C")
  return mp.INFECTED
end
return mp.LOWFI
