if mp.getfilesize() > 230000 and peattributes.isdll == true then
  return mp.INFECTED
end
return mp.CLEAN
