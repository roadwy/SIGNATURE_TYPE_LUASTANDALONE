local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if string.sub(L0_0, -13) == "\\iexplore.exe" or string.sub(L0_0, -11) == "\\chrome.exe" or string.sub(L0_0, -18) == "\\microsoftedge.exe" or string.sub(L0_0, -20) == "\\microsoftedgecp.exe" or string.sub(L0_0, -12) == "\\firefox.exe" then
  return mp.INFECTED
end
return mp.CLEAN
