if mp.HSTR_WEIGHT >= 2 then
  return mp.INFECTED
elseif hstrlog[1].matched then
  mp.set_mpattribute("HSTR:Trojan:Win32/Sefnit.AU")
  return mp.LOWFI
end
return mp.CLEAN
