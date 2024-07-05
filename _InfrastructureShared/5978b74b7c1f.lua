if mp.get_mpattribute("do_exhaustivehstr_rescan_vbinject_fa") and mp.getfilesize() == 208384 and pehdr.NumberOfSections == 3 and pesecs[2].SizeOfRawData == 8192 and pesecs[2].VirtualAddress == 131072 and pesecs[2].Name == "UPX1" then
  return mp.INFECTED
end
return mp.CLEAN
