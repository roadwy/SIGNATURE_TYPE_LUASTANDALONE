if mp.HSTR_WEIGHT >= 3 and hstrlog[1].matched then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 2 then
  mp.set_mpattribute("HSTR:TrojanDownloader:Win32/Lerspeng")
end
return mp.CLEAN
