if (hstrlog[1].matched or hstrlog[2].matched) and 1 < mp.HSTR_WEIGHT then
  return mp.INFECTED
end
mp.set_mpattribute("HSTR:Trojan:Win32/Sefnit!ths")
return mp.CLEAN
