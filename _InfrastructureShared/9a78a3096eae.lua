if peattributes.isvbnative == true then
  pe.set_image_filename("C:\\temp\\myapp.exe")
  pe.reemulate()
  return mp.INFECTED
end
return mp.CLEAN
