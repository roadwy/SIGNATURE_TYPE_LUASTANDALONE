if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
elseif mp.HSTR_WEIGHT == 2 then
  return mp.LOWFI
end
if hstrlog[3].matched then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
end
return mp.CLEAN
