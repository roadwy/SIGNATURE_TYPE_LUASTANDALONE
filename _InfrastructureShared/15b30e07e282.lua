local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(string.sub(bm.get_imagepath(), -20))
if string.find(L0_0, "\\iexplore.exe", 8, true) or string.find(L0_0, "\\chrome.exe", 10, true) or string.find(L0_0, "\\browser_broker.exe", 2, true) or string.find(L0_0, "\\microsoftedge.exe", 3, true) or string.find(L0_0, "\\microsoftedgecp.exe", 1, true) or string.find(L0_0, "\\firefox.exe", 9, true) then
  return mp.INFECTED
end
return mp.CLEAN
