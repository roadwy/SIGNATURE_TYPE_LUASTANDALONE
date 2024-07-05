if peattributes.no_tls == true then
  return mp.CLEAN
end
pe.set_peattribute("hstr_exhaustive", true)
return mp.INFECTED
