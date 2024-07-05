if hstrlog[4].matched or hstrlog[8].matched then
  return mp.INFECTED
end
mp.set_mpattribute("do_exhaustivehstr_rescan")
return mp.CLEAN
