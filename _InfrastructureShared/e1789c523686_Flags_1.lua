if mp.HSTR_WEIGHT >= 12 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 1 then
  mp.set_mpattribute("HSTR:Adware:Win32/EoRezo")
end
mp.set_mpattribute("do_exhaustivehstr_rescan_onescan")
mp.set_mpattribute("do_vmmgrow_rescan")
return mp.CLEAN
