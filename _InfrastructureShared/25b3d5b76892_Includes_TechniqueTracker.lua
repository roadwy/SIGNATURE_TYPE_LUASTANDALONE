local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 then
  if string.find(string.lower(L0_0), "\\program files", 1, true) or string.find(string.lower(L0_0), "teamviewer", 1, true) or string.find(string.lower(L0_0), "\\steam", 1, true) or string.find(string.lower(L0_0), "torrent.exe", 1, true) or string.find(string.lower(L0_0), "teams", 1, true) or string.find(string.lower(L0_0), "atmgr.exe", 1, true) or string.find(string.lower(L0_0), "java.exe", 1, true) or string.find(string.lower(L0_0), "photoshop.exe", 1, true) or string.find(string.lower(L0_0), "geforcenowstreamer.exe", 1, true) or string.find(string.lower(L0_0), "bomgar-scc.exe", 1, true) or string.find(string.lower(L0_0), "bomgar-rep.exe", 1, true) or string.find(string.lower(L0_0), "mstsc.exe", 1, true) or string.find(string.lower(L0_0), "msra.exe", 1, true) or string.find(string.lower(L0_0), "geforcenow.exe", 1, true) or string.find(string.lower(L0_0), "l2dotnetlauncher.exe", 1, true) or string.find(string.lower(L0_0), "g2mcomm.exe", 1, true) or string.find(string.lower(L0_0), "explorer.exe", 1, true) or string.find(string.lower(L0_0), "youdaodict.exe", 1, true) then
    return mp.CLEAN
  end
  TrackPidAndTechniqueBM("BM", "T1056.001", "keylog")
  if IsDetectionThresholdMet("BM") then
    return mp.INFECTED
  end
end
return mp.CLEAN
