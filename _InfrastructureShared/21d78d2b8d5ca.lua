if mp.HSTR_WEIGHT >= 15 then
  if mp.HSTR_WEIGHT <= 25 then
    mp.set_mpattribute("HSTR:Wizzrem.Concrete.A2")
  end
  if mp.HSTR_WEIGHT > 25 then
    mp.set_mpattribute("HSTR:Wizzrem.Concrete.A2X")
  end
end
return mp.INFECTED
