if peattributes.isdll == true and pe.get_exports_count() == 5 then
  return mp.INFECTED
end
return mp.CLEAN
