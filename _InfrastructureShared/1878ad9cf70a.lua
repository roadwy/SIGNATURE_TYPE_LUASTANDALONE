if peattributes.no_security == true and mp.getfilesize() >= 102400 and mp.getfilesize() <= 204800 then
  return mp.INFECTED
end
return mp.CLEAN
