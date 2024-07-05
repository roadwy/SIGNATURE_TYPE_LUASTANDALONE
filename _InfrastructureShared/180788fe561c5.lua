if not peattributes.isexe then
  return mp.INFECTED
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_2345pdb")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_2345pdb")
end
return mp.INFECTED
