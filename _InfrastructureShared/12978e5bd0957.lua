if mp.HSTR_WEIGHT >= 9 then
  return mp.INFECTED
end
if not peattributes.isexe then
  return mp.CLEAN
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_2345cn")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_2345cn")
end
return mp.CLEAN
