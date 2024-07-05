if pehdr.AddressOfEntryPoint == 0 and pe.get_exports() > 646 and peattributes.isdll == true then
  return mp.INFECTED
end
return mp.CLEAN
