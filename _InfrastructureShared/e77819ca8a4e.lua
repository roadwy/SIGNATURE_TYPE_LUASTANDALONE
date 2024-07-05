if pehdr.NumberOfSections >= 4 and pesecs[4].Name == ".newimp" and mp.bitand(pesecs[4].Characteristics, 2147483648) == 2147483648 then
  return mp.INFECTED
end
return mp.CLEAN
