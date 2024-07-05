local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(this_sigattrlog[2].utf8p1)
if string.find(L0_0, "rdpclip.exe", 1, true) or string.find(L0_0, "tsprintlogin.exe", 1, true) or string.find(L0_0, "tsscanlist.exe", 1, true) or string.find(L0_0, "uplaunch.exe", 1, true) or string.find(L0_0, "svchost.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
