if mp.HSTR_WEIGHT == 3 then
  return mp.INFECTED
end
pe.set_peattribute("deep_analysis", true)
pe.reemulate()
return mp.CLEAN
