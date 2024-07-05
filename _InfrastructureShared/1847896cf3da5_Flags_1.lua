if mp.HSTR_WEIGHT == 5 then
  mp.set_mpattribute("do_exhaustivehstr_rescan`")
  pe.reemulate()
  return mp.CLEAN
end
if hstrlog[14].matched then
  mp.changedetectionname(805306379)
elseif hstrlog[11].matched then
  mp.changedetectionname(805306380)
end
return mp.INFECTED
