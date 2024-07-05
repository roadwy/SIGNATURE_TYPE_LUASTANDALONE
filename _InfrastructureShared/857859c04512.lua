if peattributes.isdll == false or peattributes.hasexports == false then
  return mp.CLEAN
end
if pe.get_exports() > 90 then
  return mp.INFECTED
end
return mp.CLEAN
