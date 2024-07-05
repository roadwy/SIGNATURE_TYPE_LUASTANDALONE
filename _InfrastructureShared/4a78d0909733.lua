if peattributes.isdll == true and (pe.get_exports_count() == 11 or pe.get_exports_count() == 31) then
  return mp.INFECTED
end
return mp.CLEAN
