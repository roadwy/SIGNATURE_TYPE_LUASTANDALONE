if mp.HSTR_WEIGHT < 20 then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  return mp.LOWFI
end
if pehdr.Subsystem == 1 then
  mp.changedetectionname(805306386)
elseif hstrlog[4].matched ~= true then
  mp.changedetectionname(805306397)
end
return mp.INFECTED
