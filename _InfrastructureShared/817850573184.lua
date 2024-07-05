if mp.getfilesize() < 9000 and peattributes.ismsil == true then
  return mp.INFECTED
end
return mp.CLEAN
