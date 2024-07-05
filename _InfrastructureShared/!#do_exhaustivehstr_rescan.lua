if peattributes.lastscn_executable and peattributes.epoutofimage and peattributes.no_ep and peattributes.entrypoint_in_header and pehdr.AddressOfEntryPoint == 0 and pehdr.NumberOfSections == 9 and pesecs[pehdr.NumberOfSections].Name == ".imports" and mp.getfilesize() > 851968 and mp.getfilesize() < 905216 then
  return mp.INFECTED
end
return mp.CLEAN
