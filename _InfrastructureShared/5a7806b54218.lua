if mp.getfilesize() > 11776 and mp.getfilesize() < 15104 and peattributes.ismsil then
  return mp.INFECTED
end
return mp.CLEAN
