if mp.HSTR_WEIGHT >= 3 then
  mp.set_mpattribute("PUA:Block:CoinMiner")
  return mp.INFECTED
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_coinminer")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_coinminer")
end
return mp.CLEAN
