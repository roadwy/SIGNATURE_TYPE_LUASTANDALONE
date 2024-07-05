local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if string.sub(L0_0, -12) == "explorer.exe" then
  return mp.CLEAN
end
if string.sub(L0_0, -10) == "chrome.exe" then
  return mp.CLEAN
end
if string.sub(L0_0, -11) == "control.exe" then
  return mp.CLEAN
end
if string.sub(L0_0, -17) == "runtimebroker.exe" then
  return mp.CLEAN
end
return mp.INFECTED
