if pehdr.AddressOfEntryPoint == 0 and pe.get_exports() > 296 and peattributes.isdll == true then
  return mp.INFECTED
end
return mp.CLEAN
