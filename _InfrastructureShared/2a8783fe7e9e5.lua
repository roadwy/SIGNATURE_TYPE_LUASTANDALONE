if mp.getfilesize() < 197000 then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  pe.reemulate()
end
return mp.INFECTED
