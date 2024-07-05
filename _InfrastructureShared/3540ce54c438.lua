if peattributes.isdamaged then
  pe.set_peattribute("isdamaged", false)
  return mp.INFECTED
end
return mp.CLEAN
