if mp.HSTR_WEIGHT >= 6 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT > 3 and mp.get_mpattribute("HSTR:Fareit.gen") then
  return mp.INFECTED
end
pe.set_peattribute("hstr_exhaustive", true)
pe.reemulate()
return mp.LOWFI
