if peattributes.ismsil == true and peattributes.no_security == true and mp.getfilesize() >= 73728 and mp.getfilesize() <= 4390912 then
  return mp.INFECTED
end
return mp.LOWFI
