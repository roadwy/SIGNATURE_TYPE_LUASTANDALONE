mp.set_mpattribute("HSTR:Adware:Win32/ZoomyLib.E")
if mp.bitand(mp.HSTR_WEIGHT, 64) > 0 and 0 < mp.bitand(mp.HSTR_WEIGHT, 56) and 0 < mp.bitand(mp.HSTR_WEIGHT, 7) then
  return mp.INFECTED
end
if not mp.get_mpattribute("do_exhaustivehstr_rescan") then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
end
return mp.CLEAN
