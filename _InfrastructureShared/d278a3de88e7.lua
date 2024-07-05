if mp.HSTR_WEIGHT < 6 and mp.HSTR_WEIGHT > 2 then
  mp.set_mpattribute("HSTR:Trojan:Win32/Emotet.K1")
end
return mp.INFECTED
