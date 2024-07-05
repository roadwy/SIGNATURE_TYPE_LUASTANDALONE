if mp.HSTR_WEIGHT >= 16 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 12 then
  mp.set_mpattribute("HSTR:BrowserModifier:Win32/CrassercueSP.A")
end
if not mp.get_mpattribute("do_exhaustivehstr_rescan") then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
end
return mp.CLEAN
