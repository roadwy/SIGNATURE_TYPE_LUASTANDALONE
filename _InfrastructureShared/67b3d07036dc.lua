local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.wp2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    L0_0 = L0_0(L1_1)
    L1_1 = string
    L1_1 = L1_1.match
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, "\\([^\\]+)$")
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[2]
      L2_2 = L2_2.wp1
      if L2_2 ~= nil then
        L2_2 = string
        L2_2 = L2_2.lower
        L2_2 = L2_2(this_sigattrlog[2].utf8p1)
        if L1_1 == string.match(L2_2, "\\([^\\]+)$") then
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
