if hstrlog[1].matched and mp.getfilesize() < 5000000 then
  return mp.INFECTED
end
return mp.CLEAN
