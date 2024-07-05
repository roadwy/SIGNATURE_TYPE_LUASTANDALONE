if not peattributes.isdll then
  return mp.CLEAN
end
if pe.get_exports() ~= 1 then
  return mp.CLEAN
end
if pe.mmap_string_rva(pe.get_exports()[1].namerva, 64) == "maggie" then
  return mp.INFECTED
end
return mp.CLEAN
