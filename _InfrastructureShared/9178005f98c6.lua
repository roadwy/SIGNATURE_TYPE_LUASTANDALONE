mp.set_mpattribute("do_exhaustivehstr_rescan")
if ((not hstrlog[1].matched or not hstrlog[2].matched) and (not hstrlog[1].matched or not hstrlog[3].matched) and hstrlog[2].matched and hstrlog[3].matched) == true then
  return mp.SUSPICIOUS
end
return mp.CLEAN
