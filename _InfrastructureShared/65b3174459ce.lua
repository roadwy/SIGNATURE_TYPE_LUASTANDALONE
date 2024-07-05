local L0_0, L1_1, L2_2
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 ~= nil then
  L1_1 = string.match(L0_0, "%.exe\".+\"(.+%.wsf)")
  if L1_1 ~= nil then
    L2_2 = mp.ContextualExpandEnvironmentVariables(L1_1)
    if sysio.IsFileExists(L2_2) then
      bm.add_related_file(L2_2)
      mp.ReportLowfi(L2_2, 927347397)
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
