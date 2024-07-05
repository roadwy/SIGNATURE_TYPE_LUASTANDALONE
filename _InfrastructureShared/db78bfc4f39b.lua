if pehdr.NumberOfSections == 3 and pesecs[2].SizeOfRawData > 1376256 then
  pe.set_image_filename("\"Lollipop.exe\" INSTALL:|14693||86400|1|0007||")
  pe.reemulate()
  return mp.INFECTED
end
if pehdr.NumberOfSections == 4 and pesecs[1].SizeOfRawData > 2359296 and mp.get_mpattribute("attrmatch_codepatch_EIP_00000004_EB") then
  return mp.INFECTED
end
return mp.CLEAN
