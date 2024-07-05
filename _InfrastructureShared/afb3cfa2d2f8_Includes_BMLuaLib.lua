local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.ContextualExpandEnvironmentVariables
  L0_0 = L0_0(this_sigattrlog[2].utf8p1)
  if sysio.IsFileExists(L0_0) and string.sub(L0_0, -3) == ".js" then
    bm.add_threat_file(L0_0)
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
