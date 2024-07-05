local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.utf8p1
if not L0_0 then
  return mp.CLEAN
end
L0_0 = string.lower(L0_0)
if not L0_0 or string.len(L0_0) < 5 then
  return mp.CLEAN
end
if ({
  [".jpg"] = true,
  ["jpeg"] = true,
  [".png"] = true,
  [".gif"] = true,
  [".bmp"] = true,
  ["tiff"] = true,
  [".tif"] = true,
  [".ppm"] = true,
  [".pnm"] = true,
  [".pgm"] = true,
  [".pbm"] = true
})[L0_0:sub(-4)] and (string.find(L0_0, "%appdata%\\", 1, true) or string.find(L0_0, "appdata\\roaming\\", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
