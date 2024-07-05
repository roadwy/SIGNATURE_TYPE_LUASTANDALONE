local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 then
  if string.find(string.lower(L0_0), "\\program files", 1, true) or string.find(string.lower(L0_0), "teamviewer", 1, true) or string.find(string.lower(L0_0), "\\steam", 1, true) or string.find(string.lower(L0_0), "torrent.exe", 1, true) or string.find(string.lower(L0_0), "vncviewer.exe", 1, true) or string.find(string.lower(L0_0), "modernwarfare.exe", 1, true) or string.find(string.lower(L0_0), "workspaces.exe", 1, true) or string.find(string.lower(L0_0), "deepl.exe", 1, true) or string.find(string.lower(L0_0), "risingstorm2.exe", 1, true) or string.find(string.lower(L0_0), "proctortrack.exe", 1, true) or string.find(string.lower(L0_0), "monosnap.exe", 1, true) or string.find(string.lower(L0_0), "explorer.exe", 1, true) or string.find(string.lower(L0_0), "dsicord", 1, true) or string.find(string.lower(L0_0), "chrome", 1, true) or string.find(string.lower(L0_0), "m5_vario_", 1, true) or string.find(string.lower(L0_0), "blackopscoldwar", 1, true) or string.find(string.lower(L0_0), "game", 1, true) or string.find(string.lower(L0_0), "mstsc.exe", 1, true) then
    return mp.CLEAN
  end
  if IsDetectionThresholdMet("BM") then
    return mp.INFECTED
  end
end
return mp.CLEAN
