if mp.getfilesize() < 49920 and mp.getfilesize() > 49152 and mp.get_mpattribute("BM_MACHO64_FILE") then
  return mp.INFECTED
end
return mp.CLEAN
