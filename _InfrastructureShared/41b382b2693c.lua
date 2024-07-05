local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L1_1 = L1_1(bm.get_imagepath())
L0_0 = L0_0(L1_1, L1_1(bm.get_imagepath()))
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.utf16to8(this_sigattrlog[3].wp1))
if L0_0 == L1_1 then
  return mp.INFECTED
end
return mp.CLEAN
