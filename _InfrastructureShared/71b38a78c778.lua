local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 == nil or string.len(L0_0) < 1 then
  return mp.CLEAN
end
if string.find(L0_0, "\\chrome.exe", 1, true) or string.find(L0_0, "\\opera.exe", 1, true) or string.find(L0_0, "\\360se.exe", 1, true) or string.find(L0_0, "\\brave.exe", 1, true) or string.find(L0_0, "\\msedge.exe", 1, true) or string.find(L0_0, "\\vivaldi.exe", 1, true) or string.find(L0_0, "\\sogouexplorer.exe", 1, true) or string.find(L0_0, "\\browser.exe", 1, true) then
  return mp.CLEAN
end
if string.find(L0_0, "\\appdata\\", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
