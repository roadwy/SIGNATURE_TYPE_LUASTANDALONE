if peattributes.isdll == true and pe.get_exports() == 1 then
  return mp.INFECTED
end
return mp.CLEAN
