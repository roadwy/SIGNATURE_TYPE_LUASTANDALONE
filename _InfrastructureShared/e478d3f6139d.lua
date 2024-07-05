if mp.HSTR_WEIGHT >= 11 then
  mp.set_mpattribute("PUA:Block:NheqMiner")
  return mp.INFECTED
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_nheqminer")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_nheqminer")
end
return mp.CLEAN
