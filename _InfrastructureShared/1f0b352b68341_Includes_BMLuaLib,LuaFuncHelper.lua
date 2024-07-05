local L0_0
if this_sigattrlog[5].matched then
  L0_0 = this_sigattrlog[5].utf8p1
elseif this_sigattrlog[6].matched then
  L0_0 = this_sigattrlog[6].utf8p1
end
if not L0_0 then
  return mp.CLEAN
end
if IsKeyInRollingQueue("AVExclusions", L0_0) then
  AppendToRollingQueue("AVExclusions", L0_0, "", 1, 1000)
end
return mp.CLEAN
