if not peattributes.isdll or peattributes.no_exports then
  return mp.CLEAN
end
if pe.get_exports() ~= 1 then
  return mp.CLEAN
end
if pe.get_exports()[1].ordinal ~= 1 then
  return mp.CLEAN
end
return mp.INFECTED
