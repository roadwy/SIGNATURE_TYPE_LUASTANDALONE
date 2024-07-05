local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil and (string.match(L0_0, "/bin/%a*sh") or string.find(L0_0, "perl", 1, true) or string.find(L0_0, "python", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
