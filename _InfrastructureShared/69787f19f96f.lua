if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_spector")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_spector")
end
return mp.INFECTED
