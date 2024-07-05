if peattributes.no_security == true and peattributes.ismsil == true and mp.getfilesize() >= 12288 and mp.getfilesize() <= 86016 then
  return mp.INFECTED
end
return mp.LOWFI
