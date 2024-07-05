local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L0_0 = string.lower(L0_0)
  if string.sub(L0_0, -10) ~= "chrome.exe" and string.sub(L0_0, -12) ~= "iexplore.exe" and string.sub(L0_0, -11) ~= "firefox.exe" and string.sub(L0_0, -10) ~= "safari.exe" then
    return mp.INFECTED
  end
end
return mp.CLEAN
