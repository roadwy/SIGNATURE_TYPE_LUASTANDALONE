local L0_0
if this_sigattrlog[2].matched then
  L0_0 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[2].utf8p1)
  if L0_0 ~= nil then
    bm.add_related_file(L0_0)
  end
end
return mp.INFECTED
