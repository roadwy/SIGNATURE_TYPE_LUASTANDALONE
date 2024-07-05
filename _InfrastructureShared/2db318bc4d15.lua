local L0_0
L0_0 = ""
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p2
elseif this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p2
end
if L0_0 ~= nil and string.len(L0_0) > 3 then
  L0_0 = mp.ContextualExpandEnvironmentVariables(L0_0)
  if sysio.IsFileExists(L0_0) and mp.IsKnownFriendlyFile(L0_0, true, false) == false then
    bm.add_related_file(L0_0)
  end
end
return mp.INFECTED
