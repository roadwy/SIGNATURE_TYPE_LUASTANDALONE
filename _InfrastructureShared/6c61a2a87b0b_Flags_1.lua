if mp.HSTR_WEIGHT >= 4 then
  mp.set_mpattribute("PUA:Block:BitTorrent")
  return mp.INFECTED
end
mp.set_mpattribute("do_exhaustivehstr_rescan")
return mp.CLEAN
