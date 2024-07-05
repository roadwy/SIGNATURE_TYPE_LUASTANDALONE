local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = bm
  L1_1 = L1_1.get_imagepath
  L2_2 = L1_1()
  L0_0 = L0_0(L1_1, L2_2, L1_1())
  L1_1 = string
  L1_1 = L1_1.match
  L2_2 = string
  L2_2 = L2_2.sub
  L2_2 = L2_2(L0_0, -11)
  L1_1 = L1_1(L2_2, "_keygen.exe")
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[5]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[6]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = string
        L1_1 = L1_1.lower
        L2_2 = this_sigattrlog
        L2_2 = L2_2[5]
        L2_2 = L2_2.utf8p1
        L1_1 = L1_1(L2_2)
        L2_2 = string
        L2_2 = L2_2.lower
        L2_2 = L2_2(this_sigattrlog[6].utf8p1)
        if L1_1 ~= nil and L2_2 ~= nil and string.match(string.sub(L1_1, -9), "%d%d%d%d%.exe") and string.match(string.sub(L2_2, -9), "%d%d%d%d%.exe") then
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
