if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
end
pe.set_peattribute("hstr_exhaustive", true)
pe.reemulate()
return mp.CLEAN
