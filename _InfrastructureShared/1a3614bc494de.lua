if not mp.get_mpattribute("MIXED:CERT:EnigmaSoftware") then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT >= 13 then
  return mp.INFECTED
end
if peattributes.amd64_image then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan_enigmasoftware")
else
  mp.set_mpattribute("do_exhaustivehstr_rescan_enigmasoftware")
end
return mp.CLEAN
