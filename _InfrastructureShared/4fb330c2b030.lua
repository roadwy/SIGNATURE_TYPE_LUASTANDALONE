local L0_0
L0_0 = ""
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p2
end
if L0_0 ~= "" then
  L0_0 = string.lower(L0_0)
  if string.find(L0_0, "domain ", 1, true) and string.find(L0_0, "user ", 1, true) and string.find(L0_0, "pass ", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
