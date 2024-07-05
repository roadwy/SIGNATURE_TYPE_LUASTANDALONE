local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L0_0 = string.lower(string.sub(L0_0, -18))
  if string.find(L0_0, "\\msedge.exe", 1, true) or string.find(L0_0, "\\svchost.exe", 1, true) or string.find(L0_0, "\\sihost.exe", 1, true) or string.find(L0_0, "\\runtimebroker.exe", 1, true) or string.find(L0_0, "\\werfault.exe", 1, true) or string.find(L0_0, "\\wmiprvse.exe", 1, true) or string.find(L0_0, "\\syntpenh.exe", 1, true) then
    return mp.CLEAN
  end
end
return mp.INFECTED
