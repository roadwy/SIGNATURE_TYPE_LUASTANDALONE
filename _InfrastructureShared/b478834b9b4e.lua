if peattributes.no_security == true and mp.getfilesize() >= 122880 and mp.getfilesize() <= 131072 and (pehdr.NumberOfSections >= 4 or pehdr.NumberOfSections <= 7) then
  if hstrlog[1].matched and hstrlog[2].matched and hstrlog[3].matched then
    return mp.INFECTED
  end
  if hstrlog[1].matched and hstrlog[2].matched and hstrlog[4].matched then
    return mp.INFECTED
  end
  if hstrlog[1].matched and hstrlog[4].matched and hstrlog[5].matched then
    return mp.INFECTED
  end
end
return mp.CLEAN
