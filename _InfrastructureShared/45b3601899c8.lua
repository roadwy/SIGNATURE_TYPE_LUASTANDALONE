local L0_0
L0_0 = ""
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 ~= "" then
  L0_0 = string.lower(L0_0)
  if string.find(L0_0, "maccount ", 1, true) and string.find(L0_0, "dc ", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
