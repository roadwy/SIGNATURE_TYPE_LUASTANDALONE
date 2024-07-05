if peattributes.isdll and not mp.get_mpattribute("PEPCODE:HasDigitalSignature") and mp.getfilesize() >= 500000 and mp.getfilesize() <= 2000000 and not mp.get_mpattribute("do_exhaustivehstr_64bit_rescan") then
  mp.set_mpattribute("do_exhaustivehstr_64bit_rescan")
  return mp.INFECTED
end
return mp.CLEAN
