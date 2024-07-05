if mp.HSTR_WEIGHT >= 101 then
  return mp.INFECTED
end
if hstrlog[1].matched or hstrlog[2].matched then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
end
if hstrlog[1].matched and hstrlog[2].matched then
  return mp.CLEAN
end
return mp.LOWFI
