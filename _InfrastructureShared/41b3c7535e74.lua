local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.utf8p1
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
L1_1 = #L0_0
if not (L1_1 < 12) then
  L1_1 = string
  L1_1 = L1_1.sub
  L1_1 = L1_1(L0_0, -12)
elseif L1_1 ~= "\\svchost.exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(this_sigattrlog[3].utf8p1)
if string.find(L1_1, "\\appdata\\", 1, true) == nil and string.find(L1_1, "\\temp\\", 1, true) == nil then
  return mp.CLEAN
end
return mp.INFECTED
