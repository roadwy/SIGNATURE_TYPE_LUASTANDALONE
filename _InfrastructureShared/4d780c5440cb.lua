if mp.getfilesize() < 500000 and peattributes.isdll == true then
  return mp.INFECTED
end
return mp.CLEAN
