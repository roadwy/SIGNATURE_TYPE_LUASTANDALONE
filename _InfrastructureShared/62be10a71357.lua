if mp.HSTR_WEIGHT >= 3 then
  mp.set_mpattribute("PUA:Block:SmsReg.A")
  return mp.INFECTED
end
return mp.LOWFI
