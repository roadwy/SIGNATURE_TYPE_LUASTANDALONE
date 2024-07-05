if mp.HSTR_WEIGHT >= 32 and mp.bitand(mp.HSTR_WEIGHT, 15) >= 2 then
  return mp.INFECTED
end
mp.set_mpattribute("HSTR:BrowserModifier:Win32/Neobar.A")
return mp.CLEAN
