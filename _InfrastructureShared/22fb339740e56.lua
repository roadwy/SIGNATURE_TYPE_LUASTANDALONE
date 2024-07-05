local L0_0
if this_sigattrlog[7].matched then
  L0_0 = this_sigattrlog[7].utf8p1
elseif this_sigattrlog[8].matched then
  L0_0 = this_sigattrlog[8].utf8p1
elseif this_sigattrlog[9].matched then
  L0_0 = this_sigattrlog[9].utf8p1
else
  return mp.CLEAN
end
if mp.ENGINEBUILD < 17100 then
  L0_0 = string.lower(L0_0)
  if L0_0:find(":\\program files\\windows defender\\", 1, true) ~= nil or L0_0:find(":\\program files\\microsoft security client\\", 1, true) ~= nil or L0_0:find(":\\programdata\\microsoft\\windows defender\\platform", 1, true) ~= nil then
    return mp.CLEAN
  end
end
return mp.INFECTED
