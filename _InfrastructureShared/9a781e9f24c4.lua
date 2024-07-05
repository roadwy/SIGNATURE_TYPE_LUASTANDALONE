if peattributes.isexe and peattributes.no_security and #pe.get_exports() == 1 then
  return mp.INFECTED
end
return mp.CLEAN
