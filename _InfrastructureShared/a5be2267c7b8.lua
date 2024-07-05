if mp.HSTR_WEIGHT >= 5 then
  mp.set_mpattribute("PUA:Block:SMSReg.I")
  return mp.INFECTED
end
return mp.LOWFI
