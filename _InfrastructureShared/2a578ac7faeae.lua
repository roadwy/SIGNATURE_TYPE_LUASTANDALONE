if mp.HSTR_WEIGHT >= 3 then
  mp.set_mpattribute("PUA:Block:EasyMiner")
  return mp.INFECTED
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_easyminer")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_easyminer")
end
return mp.CLEAN
