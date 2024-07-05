local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = string
  L2_2 = L2_2.sub
  L2_2 = L2_2(L0_0, -20)
  L1_1 = L1_1(L2_2, L2_2(L0_0, -20))
  if L1_1 ~= "\\umworkerprocess.exe" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = nil
  if this_sigattrlog[1].matched then
    L2_2 = this_sigattrlog[1].utf8p1
  elseif this_sigattrlog[2].matched then
    L2_2 = this_sigattrlog[2].utf8p1
  end
  if L2_2 ~= nil and sysio.IsFileExists(L2_2) and string.sub(L2_2, -5) == ".aspx" then
    bm.add_threat_file(L2_2)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
