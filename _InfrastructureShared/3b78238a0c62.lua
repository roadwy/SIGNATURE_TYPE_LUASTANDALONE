if peattributes.ismsil == true and mp.getfilesize() < 172032 then
  return mp.INFECTED
end
return mp.CLEAN
