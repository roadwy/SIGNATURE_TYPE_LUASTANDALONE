if peattributes.isdll == false or pehdr.NumberOfSections ~= 9 or pehdr.AddressOfEntryPoint ~= 0 or peattributes.hasexports == false then
  return mp.CLEAN
end
if pe.get_exports() > 1000 then
  return mp.INFECTED
end
return mp.CLEAN
