if peattributes.isdll == true and (mp.getfilesize() >= 8192 or mp.getfilesize() <= 12288) then
  return mp.INFECTED
end
return mp.CLEAN
