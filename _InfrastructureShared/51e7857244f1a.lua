if mp.HSTR_WEIGHT >= 6 then
  mp.set_mpattribute("PUA:Block:XMRig")
  return mp.INFECTED
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_xmrig")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_xmrig")
end
mp.set_mpattribute("Miner:XMRigNoBlock")
return mp.CLEAN
