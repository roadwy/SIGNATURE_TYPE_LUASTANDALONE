local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].wp2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 ~= nil then
  if string.find(L0_0, "| sh", 1, true) then
    return mp.INFECTED
  elseif string.find(L0_0, "| python", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
