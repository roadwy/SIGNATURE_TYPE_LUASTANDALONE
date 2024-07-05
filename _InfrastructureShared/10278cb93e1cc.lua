if mp.get_mpattribute("pea_hasexports") and mp.getfilesize() >= 6242304 and mp.getfilesize() < 6246400 then
  return mp.INFECTED
end
return mp.CLEAN
