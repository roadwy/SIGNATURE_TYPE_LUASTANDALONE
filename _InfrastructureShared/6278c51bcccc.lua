if mp.getfilesize() >= 9728 and mp.getfilesize() <= 13312 and hstrlog[1].matched and hstrlog[2].matched then
  return mp.INFECTED
end
return mp.CLEAN
