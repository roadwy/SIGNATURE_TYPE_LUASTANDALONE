local L0_0
if this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p1)
elseif this_sigattrlog[3].matched then
  L0_0 = string.lower(this_sigattrlog[3].utf8p1)
end
L0_0 = mp.ContextualExpandEnvironmentVariables(L0_0)
if mp.IsKnownFriendlyFile(L0_0, true, false) == nil or mp.IsKnownFriendlyFile(L0_0, true, false) == false then
  if sysio.IsFileExists(L0_0) then
    bm.add_related_file(L0_0)
  end
  return mp.INFECTED
end
return mp.CLEAN
