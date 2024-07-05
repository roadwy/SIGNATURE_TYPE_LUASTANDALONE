if mp.getfilesize() < 454656 and mp.getfilesize() > 356352 then
  if hstrlog[1].matched and hstrlog[2].matched and hstrlog[3].matched then
    return mp.INFECTED
  end
  if hstrlog[1].matched and hstrlog[2].matched and hstrlog[4].matched then
    return mp.INFECTED
  end
end
return mp.CLEAN
