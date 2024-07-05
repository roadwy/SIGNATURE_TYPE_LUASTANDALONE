if peattributes.isdll ~= true and peattributes.hasexports ~= true then
  return mp.CLEAN
end
if pe.get_exports() == 1 then
  return mp.INFECTED
end
return mp.CLEAN
