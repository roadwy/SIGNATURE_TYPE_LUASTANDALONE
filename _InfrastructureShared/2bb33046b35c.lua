local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L1_1 = string
    L1_1 = L1_1.len
    L1_1 = L1_1(L0_0)
    if L1_1 > 8 then
      L1_1 = string
      L1_1 = L1_1.lower
      L1_1 = L1_1(L0_0)
      if string.find(L1_1, "cpassword", 1, true) and string.find(L1_1, "\\\\", 1, true) and (string.find(L1_1, "/i", 1, true) or string.find(L1_1, "-i", 1, true)) and string.find(L1_1, "policies", 1, true) then
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
