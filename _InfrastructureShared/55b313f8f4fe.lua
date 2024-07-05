local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.match
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p1
    L0_0 = L0_0(L1_1, "\\([^\\]+)$")
    if L0_0 then
      L1_1 = string
      L1_1 = L1_1.lower
      L1_1 = L1_1(L0_0)
      if string.find(L1_1, "$normal.dot", 1, true) or string.sub(L1_1, 1, 4) == "~wrd" or string.sub(L1_1, 1, 2) == "~$" then
        return mp.CLEAN
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
