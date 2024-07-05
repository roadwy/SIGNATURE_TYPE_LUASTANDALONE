if peattributes.isdll and pehdr.NumberOfSections == 5 and pevars.epsec == 1 and not peattributes.no_exports and not peattributes.no_resources and peattributes.no_tls and pehdr.SizeOfImage >= 221184 and pehdr.SizeOfImage <= 1048576 and pesecs[pevars.epsec].SizeOfRawData >= 151552 and pesecs[pevars.epsec].SizeOfRawData <= 655360 and pesecs[pehdr.NumberOfSections].Name == ".reloc" and pesecs[pevars.epsec].Name == ".text" then
  mp.set_mpattribute("MpSimulateParanoid")
  mp.set_mpattribute("MpEnableCOM")
  mp.set_mpattribute("do_exhaustivehstr_rescan_Adrotator")
  pe.reemulate()
end
return mp.CLEAN
