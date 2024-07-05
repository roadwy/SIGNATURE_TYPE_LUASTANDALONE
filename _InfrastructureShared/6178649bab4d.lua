if peattributes.isdll and peattributes.x86_image and peattributes.ismsil == false and peattributes.hasexports and mp.getfilesize() < 280000 then
  return mp.INFECTED
end
return mp.CLEAN
