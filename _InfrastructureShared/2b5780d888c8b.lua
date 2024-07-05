if mp.HSTR_WEIGHT >= 2 then
  mp.set_mpattribute("HSTR:Trojan:Win32/Tracur_01")
end
mp.set_mpattribute("do_deep_rescan")
return mp.INFECTED
