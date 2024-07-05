if peattributes.isdll ~= true then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT >= 7 then
  return mp.INFECTED
end
mp.set_mpattribute("HSTR:Trojan:Win32/CoinMiner.AF_Lowfi")
return mp.CLEAN
