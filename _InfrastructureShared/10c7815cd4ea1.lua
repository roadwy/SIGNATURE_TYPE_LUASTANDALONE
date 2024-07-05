if mp.HSTR_WEIGHT >= 7 then
  return mp.INFECTED
end
if not peattributes.isexe then
  return mp.CLEAN
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_haozip")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_haozip")
end
return mp.CLEAN
