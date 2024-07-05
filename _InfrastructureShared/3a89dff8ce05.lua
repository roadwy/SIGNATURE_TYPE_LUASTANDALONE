if pevars.sigaddr ~= 4198400 then
  return mp.CLEAN
end
pe.set_peattribute("hstr_exhaustive", true)
return mp.INFECTED
