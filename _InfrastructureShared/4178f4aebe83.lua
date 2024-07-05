if peattributes.no_security == true and (mp.getfilesize() == 135168 or mp.getfilesize() == 139264) then
  return mp.INFECTED
end
return mp.CLEAN
