if mp.HSTR_WEIGHT >= 5 then
  return mp.INFECTED
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_istuni")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_istuni")
end
return mp.CLEAN
