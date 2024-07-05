if peattributes.ismsil and mp.getfilesize() <= 393216 then
  return mp.INFECTED
end
return mp.CLEAN
