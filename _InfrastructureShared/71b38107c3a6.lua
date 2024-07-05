local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L1_1 = mp
    L1_1 = L1_1.ContextualExpandEnvironmentVariables
    L1_1 = L1_1(L0_0)
    if sysio.IsFileExists(L1_1) then
      bm.add_related_file(L1_1)
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
