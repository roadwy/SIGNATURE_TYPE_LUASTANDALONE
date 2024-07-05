if peattributes.ismsil == true and (mp.getfilesize() > 6656 and mp.getfilesize() < 8192 or mp.getfilesize() > 139264 and mp.getfilesize() < 151552) then
  return mp.INFECTED
end
return mp.CLEAN
