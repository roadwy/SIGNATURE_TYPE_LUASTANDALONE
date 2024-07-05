if mp.HSTR_WEIGHT >= 3 then
  mp.set_mpattribute("PUA:Block:lolMiner")
  return mp.INFECTED
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_lolminer")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_lolminer")
end
return mp.CLEAN
