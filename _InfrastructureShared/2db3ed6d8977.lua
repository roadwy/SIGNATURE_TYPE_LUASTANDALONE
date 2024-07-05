local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p1
elseif L0_0 == nil then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.utf8p1
if string.find(L0_0, "\\conhost.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
