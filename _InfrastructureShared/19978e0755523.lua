if mp.HSTR_WEIGHT >= 4 then
  return mp.INFECTED
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_soladaft")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_soladaft")
end
return mp.CLEAN
