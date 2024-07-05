if mp.HSTR_WEIGHT >= 13 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 12 then
  mp.set_mpattribute("HSTR:BrowserModifier:Win32/YahooSearch.C!Cby")
end
return mp.CLEAN
