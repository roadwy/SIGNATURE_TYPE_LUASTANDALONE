local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L1_1 = L1_1(bm.get_imagepath())
L0_0 = L0_0(L1_1, L1_1(bm.get_imagepath()))
L1_1 = nil
if this_sigattrlog[6].matched and this_sigattrlog[6].utf8p1 ~= nil then
  L1_1 = this_sigattrlog[6].utf8p1:lower()
end
if string.match(L1_1, "(.*\\)") == string.match(L0_0, "(.*\\)") then
  return mp.INFECTED
end
return mp.CLEAN
