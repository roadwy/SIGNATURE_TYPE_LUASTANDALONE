local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog[2].utf8p1
if L0_0 ~= nil then
  L1_1 = mp.ContextualExpandEnvironmentVariables(L0_0)
  L2_2 = string.lower(string.gsub(L1_1, "p%zi%zd%zl%zo%zc%z.%zt%zx%zt%z", "W%zi%zn%zd%zo%zw%zs%zU%zp%zd%za%zt%ze%z.%ze%zx%ze%z"))
  L2_2 = L2_2 .. "\000\000"
  mp.ReportLowfi(L2_2, 618978737)
end
return mp.INFECTED
