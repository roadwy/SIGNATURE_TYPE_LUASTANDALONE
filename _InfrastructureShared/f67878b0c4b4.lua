if peattributes.isdll == true and peattributes.hasexports == true and pe.get_exports() == 1 then
  return mp.INFECTED
end
return mp.CLEAN
