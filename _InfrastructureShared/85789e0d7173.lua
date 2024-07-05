if mp.HSTR_WEIGHT >= 2 then
  return mp.INFECTED
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_swiminen")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_swiminen")
end
return mp.CLEAN
