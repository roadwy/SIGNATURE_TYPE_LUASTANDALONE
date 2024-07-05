if peattributes.isdll and pehdr.NumberOfSections == 5 and pevars.epsec == 1 and not peattributes.no_exports and peattributes.no_tls and pehdr.SizeOfImage >= 2097152 and pehdr.SizeOfImage <= 3145728 and 2097152 <= pesecs[pevars.epsec].SizeOfRawData and pesecs[pevars.epsec].SizeOfRawData <= 2490368 and pesecs[pehdr.NumberOfSections].Name == ".reloc" and pesecs[pevars.epsec].Name == ".text" then
  mp.set_mpattribute("MpSimulateParanoid")
  mp.set_mpattribute("MpEnableCOM")
  mp.set_mpattribute("do_exhaustivehstr_rescan_Adrotator")
  pe.reemulate()
end
return mp.CLEAN
