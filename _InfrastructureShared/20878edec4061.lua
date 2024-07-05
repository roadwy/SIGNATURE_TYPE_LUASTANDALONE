mp.set_mpattribute("HSTR:AddLyricsUpdater")
if mp.HSTR_WEIGHT >= 4 and hstrlog[1].matched and hstrlog[2].matched and hstrlog[3].matched then
  return mp.INFECTED
end
return mp.CLEAN
