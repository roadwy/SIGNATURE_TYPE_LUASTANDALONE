local L0_0
if this_sigattrlog[3].matched then
  L0_0 = string.lower(this_sigattrlog[3].utf8p2)
  if L0_0 ~= nil and 3 < string.len(L0_0) and string.find(L0_0, " copy ", 1, true) and string.find(L0_0, "\\windows\\temp\\", 1, true) and (string.find(L0_0, "\\share$\\", 1, true) or string.find(L0_0, " \\\\", 1, true) or string.find(L0_0, " \"\"\\\\", 1, true)) then
    return mp.INFECTED
  end
end
return mp.CLEAN
