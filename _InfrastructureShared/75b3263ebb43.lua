local L0_0
if this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].utf8p2
elseif this_sigattrlog[4].matched then
  L0_0 = this_sigattrlog[4].utf8p2
end
if L0_0 ~= nil and string.len(L0_0) > 7 and (string.find(L0_0, "TgBlAHcALQBJAHQAZQBt", 1, true) or string.find(L0_0, "LgBQAFMAVgBFAFIAcwBpAE8Abg", 1, true) or string.find(L0_0, "AHwASQBFAFgA", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
