local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = mp
    L0_0 = L0_0.ContextualExpandEnvironmentVariables
    L0_0 = L0_0(this_sigattrlog[1].utf8p2)
    bm.add_related_file(L0_0)
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
