if bm.get_imagepath() == nil then
  return mp.CLEAN
end
if bm.get_imagepath():lower():len() >= 21 and (bm.get_imagepath():lower():sub(-13) == "\\mpcmdrun.exe" or bm.get_imagepath():lower():sub(-14) == "\\mpsigstub.exe") then
  return mp.CLEAN
end
return mp.INFECTED
