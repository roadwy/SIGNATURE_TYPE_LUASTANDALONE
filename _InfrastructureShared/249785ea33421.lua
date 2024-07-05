if mp.HSTR_WEIGHT >= 3 then
  mp.set_mpattribute("PUA:Block:TradeTec")
  mp.set_mpattribute("Company:CoinMiner64:DrosteTradeTec")
  return mp.INFECTED
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_tradetec")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_tradetec")
end
return mp.CLEAN
