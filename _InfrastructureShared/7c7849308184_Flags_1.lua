if mp.getfilesize() < 800000 and hstrlog[1].matched and not hstrlog[2].matched then
  return mp.INFECTED
end
return mp.CLEAN
