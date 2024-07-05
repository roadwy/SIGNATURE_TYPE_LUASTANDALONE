local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 ~= nil then
  if not string.find(string.lower(L0_0), " /u ", 1, true) or not string.find(string.lower(L0_0), "/logfile= ", 1, true) then
    return mp.CLEAN
  end
  if string.find(string.lower(L0_0), "\\program files", 1, true) or string.find(string.lower(L0_0), "/installstatedir=", 1, true) or string.find(string.lower(L0_0), "microsoft.dynamics.", 1, true) or string.find(string.lower(L0_0), "microsoft.management.", 1, true) or string.find(string.lower(L0_0), "windowsfabric", 1, true) or string.find(string.lower(L0_0), "deployment", 1, true) or string.find(string.lower(L0_0), "upmWmi", 1, true) then
    return mp.CLEAN
  end
end
return mp.INFECTED
