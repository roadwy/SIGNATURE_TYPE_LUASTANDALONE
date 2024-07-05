if mp.HSTR_WEIGHT >= 5 then
  mp.set_mpattribute("PUA:Block:SMSReg.J")
  return mp.INFECTED
end
return mp.LOWFI
