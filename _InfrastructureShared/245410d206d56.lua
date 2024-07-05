local L0_0, L2_1, L3_2, L4_3
L0_0 = 8
for _FORV_4_ = 1, 50 do
  if L0_0 < 1 then
    return mp.CLEAN
  end
  if sigattr_head[_FORV_4_].attribute == 12429 then
    mp.set_mpattribute("SIGATTR:AntiEmuRaceThread")
    return mp.CLEAN
  end
  if sigattr_head[_FORV_4_].attribute ~= 12362 then
    L0_0 = L0_0 - 1
  end
end
return L2_1
