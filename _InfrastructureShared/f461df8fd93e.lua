if mp.HSTR_WEIGHT >= 13 then
  mp.set_mpattribute("PUA:Block:GenoilEthMiner")
  return mp.INFECTED
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_genoil")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_genoil")
end
return mp.CLEAN
