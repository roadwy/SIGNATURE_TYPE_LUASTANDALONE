if mp.HSTR_WEIGHT >= 3 then
  mp.set_mpattribute("PUA:Block:MinerGate")
  mp.set_mpattribute("Company:CoinMiner32:MinerGate")
  return mp.INFECTED
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_minergate")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_minergate")
end
return mp.CLEAN
