if peattributes.isdll ~= true and peattributes.hasexports ~= true then
  return mp.CLEAN
end
if mp.getfilesize() < 20000 and mp.getfilesize() > 60000 then
  return mp.CLEAN
end
if pehdr.AddressOfEntryPoint ~= 0 or pehdr.ImageBase ~= 4194304 then
  return mp.CLEAN
end
if pe.get_exports() >= 2 and pe.get_exports() <= 5 then
  return mp.INFECTED
end
return mp.CLEAN
