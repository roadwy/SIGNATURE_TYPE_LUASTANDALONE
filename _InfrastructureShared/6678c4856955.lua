if mp.HSTR_WEIGHT >= 21 then
  return mp.INFECTED
elseif hstrlog[1].matched or hstrlog[2].matched then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  return mp.LOWFI
end
return mp.CLEAN
