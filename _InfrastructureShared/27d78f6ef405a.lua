if mp.HSTR_WEIGHT >= 19 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 13 then
  mp.set_mpattribute("HSTR:BrowserModifier:Win32/Haycurst.A!Cby")
end
if not mp.get_mpattribute("do_exhaustivehstr_rescan") then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
end
return mp.CLEAN
