if peattributes.ismsil == true and peattributes.hasexports == false and mp.getfilesize() < 651792 then
  return mp.INFECTED
end
return mp.CLEAN
