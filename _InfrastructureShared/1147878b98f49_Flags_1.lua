if mp.HSTR_WEIGHT >= 5 and not hstrlog[7].matched then
  return mp.INFECTED
end
mp.set_mpattribute("HSTR:TrojanProxy:Win32/Banker.BD")
return mp.LOWFI
