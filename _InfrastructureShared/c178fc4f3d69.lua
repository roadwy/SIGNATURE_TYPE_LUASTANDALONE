if mp.getfilesize() < 11000 and peattributes.ismsil == true then
  return mp.INFECTED
end
return mp.CLEAN
