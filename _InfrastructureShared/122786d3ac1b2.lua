if peattributes.ismsil == true and mp.getfilesize() >= 8448 and mp.getfilesize() <= 13056 then
  return mp.INFECTED
end
return mp.CLEAN
