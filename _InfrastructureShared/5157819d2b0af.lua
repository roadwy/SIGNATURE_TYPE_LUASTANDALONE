if not peattributes.isdll then
  return mp.CLEAN
end
if not peattributes.hasexports then
  return mp.CLEAN
end
if pe.get_exports() == 1 and pe.mmap_string_rva(pe.get_exports()[1].namerva, 64) == "RegisterModule" then
  mp.set_mpattribute("BM_IISMODULE")
  return mp.INFECTED
end
return mp.CLEAN
