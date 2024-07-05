local L0_0
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
  if L0_0 ~= nil and string.len(L0_0) > 3 and contains(L0_0, " copy ") and contains(L0_0, "\\windows\\temp\\") and (contains(L0_0, "\\share$\\") or contains(L0_0, "\\admin$\\") or contains(L0_0, " \\\\") or contains(L0_0, " \"\"\\\\")) then
    bm_AddRelatedFileFromCommandLine(L0_0)
    return mp.INFECTED
  end
end
return mp.CLEAN
