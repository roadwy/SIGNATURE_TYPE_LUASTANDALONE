if mp.IsKnownFriendlyFile(bm.get_imagepath(), false, false) == true then
  return mp.CLEAN
end
return mp.INFECTED
