local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = string
L1_1 = L1_1.sub
L1_1 = L1_1(bm.get_imagepath(), -17)
L0_0 = L0_0(L1_1, L1_1(bm.get_imagepath(), -17))
if L0_0 == "\\waworkerhost.exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
if this_sigattrlog[1].matched then
  L1_1 = string.lower(this_sigattrlog[1].utf8p2)
end
if L1_1 == nil or L1_1 == "" then
  return mp.CLEAN
end
if string.find(L1_1, "%userprofile%\\appdata\\local", 1, true) or string.find(L1_1, "%userprofile%\\appdata\\roaming", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
