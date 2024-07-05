if mp.HSTR_WEIGHT >= 12 then
  mp.set_mpattribute("PUA:Block:SGMinerAvermore")
  return mp.INFECTED
end
if mp.bitand(mp.HSTR_WEIGHT, 3) >= 2 then
  if peattributes.amd64_image then
    mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_sgminer")
  else
    mp.set_mpattribute("do_exhaustivehstr_rescan_sgminer")
  end
end
return mp.CLEAN
