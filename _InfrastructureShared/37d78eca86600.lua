if mp.HSTR_WEIGHT >= 5 then
  mp.set_mpattribute("PUA:Block:XMRigCC")
  return mp.INFECTED
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_xmrigcc")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_xmrigcc")
end
return mp.CLEAN
