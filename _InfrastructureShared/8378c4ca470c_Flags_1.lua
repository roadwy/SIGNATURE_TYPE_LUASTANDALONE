if mp.getfilesize() < 50000 and hstrlog[1].matched then
  return mp.INFECTED
end
return mp.CLEAN
