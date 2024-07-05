if mp.getfilesize() ~= nil and mp.getfilesize() >= 7168000 and mp.getfilesize() <= 10240000 then
  if not mp.get_mpattribute("do_exhaustivehstr_64bit_rescan") then
    mp.set_mpattribute("do_exhaustivehstr_64bit_rescan")
  end
  return mp.INFECTED
end
return mp.CLEAN
