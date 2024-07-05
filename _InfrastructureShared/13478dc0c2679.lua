if peattributes.ismsil == true and mp.getfilesize() > 131072 and mp.getfilesize() < 262144 then
  return mp.INFECTED
end
return mp.CLEAN
