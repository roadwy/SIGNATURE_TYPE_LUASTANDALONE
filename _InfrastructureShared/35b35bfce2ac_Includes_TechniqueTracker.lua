local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 and (string.find(L0_0, "\\program files", 1, true) or string.find(L0_0, "\\windows\\", 1, true) or string.find(L0_0, "\\deepl\\", 1, true) or string.find(L0_0, "rocketleague.exe", 1, true) or string.find(L0_0, "blackopscoldwar.exe", 1, true)) then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1056.001", "keylog")
if IsDetectionThresholdMet("BM") then
  return mp.INFECTED
end
return mp.CLEAN
