if mp.HSTR_WEIGHT >= 2 then
  return mp.INFECTED
end
if hstrlog[1].matched then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
end
return mp.CLEAN
