mp.set_mpattribute("HSTR:Rogue:Win32/Winwebsec_Lowfi")
mp.set_mpattribute("do_exhaustivehstr_rescan_winwebsec")
if mp.HSTR_WEIGHT >= 4 then
  return mp.INFECTED
end
return mp.CLEAN
