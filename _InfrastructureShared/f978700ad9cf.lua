if pehdr.Machine == 34404 then
  if mp.HSTR_WEIGHT >= 18 then
    mp.changedetectionname(805306420)
    return mp.INFECTED
  elseif mp.HSTR_WEIGHT >= 1 and hstrlog[11].matched then
    pe.set_peattribute("hstr_exhaustive", true)
    pe.reemulate()
  end
  return mp.CLEAN
elseif mp.HSTR_WEIGHT >= 18 then
  return mp.INFECTED
elseif mp.HSTR_WEIGHT >= 7 then
  mp.set_mpattribute("do_exhaustivehstr_rescan")
end
return mp.CLEAN
