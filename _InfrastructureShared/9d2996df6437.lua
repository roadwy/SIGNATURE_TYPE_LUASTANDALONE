if mp.getfilesize() < 2000 and mp.getfilesize() > 1000 and mp.get_mpattribute("BM_TEXT_FILE") then
  return mp.INFECTED
end
return mp.CLEAN
