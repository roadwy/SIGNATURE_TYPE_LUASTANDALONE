if mp.getfilesize() < 192512 and mp.getfilesize() > 122880 then
  if mp.HSTR_WEIGHT == 3 then
    mp.set_mpattribute("Dipsind.C_persist")
    return mp.LOWFI
  end
  mp.set_mpattribute("do_exhaustivehstr_rescan")
  pe.reemulate()
end
return mp.CLEAN
