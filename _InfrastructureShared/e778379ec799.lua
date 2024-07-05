if peattributes.ismsil == true and peattributes.no_security == true and mp.getfilesize() >= 131072 and mp.getfilesize() <= 139264 then
  return mp.INFECTED
end
return mp.CLEAN
