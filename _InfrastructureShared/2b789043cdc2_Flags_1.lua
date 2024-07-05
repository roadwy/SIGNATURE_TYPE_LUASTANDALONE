if pehdr.SizeOfImage > 2097152 then
  mp.set_mpattribute("PUA:Block:Ardamax:Bit")
  return mp.INFECTED
end
return mp.CLEAN
