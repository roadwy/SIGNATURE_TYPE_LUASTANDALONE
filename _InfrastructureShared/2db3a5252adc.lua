local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    L0_0 = L0_0(L1_1)
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(this_sigattrlog[2].utf8p2)
    if string.find(L0_0, ".ps1", 1, true) and not string.find(L0_0, " -", 1, true) then
      return mp.CLEAN
    elseif string.find(L1_1, ".dll", 1, true) or string.find(L1_1, ".cpl", 1, true) or string.find(L1_1, ".ocx", 1, true) or string.find(L1_1, ".wcx", 1, true) or string.find(L1_1, ".inf", 1, true) or string.find(L1_1, "\\drivers\\", 1, true) or string.find(L1_1, "\\windows\\installer\\", 1, true) or string.find(L1_1, "tsworkspace", 1, true) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
