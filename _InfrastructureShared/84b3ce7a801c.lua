local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 ~= nil then
  L0_0 = string.lower(L0_0)
  if string.find(L0_0, "\\windows auditing\\current\\winaudit.exe", 1, true) then
    return mp.CLEAN
  elseif string.find(L0_0, "\\windows auditing\\current\\winaudit_standalone.exe", 1, true) then
    return mp.CLEAN
  end
end
return mp.INFECTED
