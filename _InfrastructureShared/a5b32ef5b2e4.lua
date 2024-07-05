local L0_0
L0_0 = ""
if this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p2
end
if this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[3].utf8p2
end
if L0_0 ~= "" then
  L0_0 = string.lower(L0_0)
  if string.find(L0_0, "-r ", 1, true) and string.find(L0_0, "init", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
