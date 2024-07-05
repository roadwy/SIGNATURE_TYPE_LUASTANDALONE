local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = string
L1_1 = L1_1.sub
L1_1 = L1_1(bm.get_imagepath(), -10)
L0_0 = L0_0(L1_1, L1_1(bm.get_imagepath(), -10))
L1_1 = nil
if L0_0 == "\\lsass.exe" then
  if this_sigattrlog[1].matched then
    L1_1 = this_sigattrlog[1].utf8p1
  elseif this_sigattrlog[2].matched then
    L1_1 = this_sigattrlog[2].utf8p1
  end
  if L1_1 ~= nil then
    bm.add_threat_file(L1_1)
  end
  return mp.INFECTED
end
return mp.CLEAN
