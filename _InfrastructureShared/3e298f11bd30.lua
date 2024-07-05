if string.find(mp.getfilename():lower(), "appdata\\roaming\\%l+\\[^\\]+$") then
  return mp.INFECTED
end
return mp.CLEAN
