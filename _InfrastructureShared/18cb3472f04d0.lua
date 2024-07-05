local L0_0, L1_1
L0_0 = 3
L1_1 = bm
L1_1 = L1_1.GetProcedureMatchDuration
L1_1 = L1_1(1)
if L1_1 > L0_0 * 10000000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[5]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[5]
  L1_1 = L1_1.utf8p1
  if L1_1 ~= nil then
    L1_1 = mp
    L1_1 = L1_1.ContextualExpandEnvironmentVariables
    L1_1 = L1_1(this_sigattrlog[5].utf8p1)
    if L1_1 ~= nil then
      bm.add_related_file(L1_1)
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
