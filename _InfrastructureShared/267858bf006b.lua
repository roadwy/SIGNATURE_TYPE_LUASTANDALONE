if true == peattributes.isdll and mp.getfilesize() >= 400000 and mp.getfilesize() <= 750000 and string.lower(mp.getfilename()):find("\\appdata\\roaming\\microsoft\\windows\\templates\\", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
