local L0_0
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[3].utf8p2)
elseif this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[4].utf8p2)
end
if L0_0 ~= nil and 3 < string.len(L0_0) and contains(L0_0, {"transfer", "addfile"}) and (contains(L0_0, "\\share$\\") or contains(L0_0, "\\admin$\\") or contains(L0_0, " \\\\") or contains(L0_0, " \"\"\\\\")) then
  return mp.INFECTED
end
return mp.CLEAN
