local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.utf8p1
  L0_0 = L0_0(L1_1)
  if L0_0 ~= nil then
    L1_1, L2_2 = nil, nil
    L1_1, L2_2 = string.match(L0_0, "\\microsoft\\(.+)\\(.+)%.exe")
    if L1_1 and L2_2 then
      if L1_1 == L2_2 and 3 < string.len(L2_2) then
        return mp.INFECTED
      end
      mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[3].utf8p1), 1966641469)
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
