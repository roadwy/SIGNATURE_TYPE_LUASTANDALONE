local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 and (string.find(string.lower(L0_0), "\\program files", 1, true) or string.find(string.lower(L0_0), "teamviewer", 1, true) or string.find(string.lower(L0_0), "\\windows\\", 1, true) or string.find(string.lower(L0_0), "g2mcomm.exe", 1, true) or string.find(string.lower(L0_0), "teams", 1, true) or string.find(string.lower(L0_0), "wintrv.exe", 1, true) or string.find(string.lower(L0_0), "explorer.exe", 1, true) or string.find(string.lower(L0_0), "lunc.exe", 1, true) or string.find(string.lower(L0_0), "lync.exe", 1, true) or string.find(string.lower(L0_0), "rdcman.exe", 1, true) or string.find(string.lower(L0_0), "youdaodict.exe", 1, true)) then
  return mp.CLEAN
end
if IsDetectionThresholdMet("BM") then
  return mp.INFECTED
end
return mp.CLEAN
