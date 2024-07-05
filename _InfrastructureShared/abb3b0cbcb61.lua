local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(this_sigattrlog[2].utf8p2)
L0_0 = L0_0.match
L0_0 = L0_0(L0_0, "|app=(.-)|")
if L0_0 ~= nil then
  L0_0 = mp.ContextualExpandEnvironmentVariables(L0_0)
  if L0_0 ~= nil and sysio.IsFileExists(L0_0) then
    mp.ReportLowfi(L0_0, 2240217800)
  end
end
return mp.INFECTED
