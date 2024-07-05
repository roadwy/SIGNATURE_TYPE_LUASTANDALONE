if hstrlog[5].matched and peattributes.no_security == true and mp.getfilesize() >= 303104 and mp.getfilesize() <= 1601536 then
  return mp.INFECTED
end
return mp.CLEAN
