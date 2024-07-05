if peattributes.isdll and peattributes.hasexports and mp.getfilesize() > 122880 and mp.getfilesize() < 358400 and pe.get_exports_count() == 1 then
  return mp.INFECTED
end
return mp.CLEAN
