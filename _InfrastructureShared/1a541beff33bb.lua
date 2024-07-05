if peattributes.isexe and peattributes.epinfirstsect and pehdr.NumberOfSections >= 3 and pehdr.NumberOfSections < 6 and pesecs[pehdr.NumberOfSections].Name == ".data0" and pesecs[pevars.epsec].SizeOfRawData == 512 and pe.mmap_rva(pesecs[pehdr.NumberOfSections].VirtualAddress + 4, 2) == "MZ" then
  return mp.INFECTED
end
return mp.CLEAN
