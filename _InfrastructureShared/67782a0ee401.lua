if peattributes.isdll == false or pehdr.AddressOfEntryPoint ~= 0 or peattributes.hasexports == false then
  return mp.CLEAN
end
if pe.get_exports() > 200 then
  return mp.INFECTED
end
return mp.CLEAN
