local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1, L2_2 = nil, nil
if this_sigattrlog[4].matched then
  L1_1 = string.lower(this_sigattrlog[4].utf8p1)
elseif this_sigattrlog[5].matched then
  L1_1 = string.lower(this_sigattrlog[5].utf8p1)
elseif this_sigattrlog[6].matched then
  L1_1 = string.lower(this_sigattrlog[6].utf8p1)
end
for _FORV_6_ = 1, L0_0 do
  if sigattr_tail[_FORV_6_].attribute == 16384 then
    L2_2 = sigattr_tail[_FORV_6_].utf8p1:lower()
    if L2_2 == L1_1 then
      return mp.CLEAN
    end
  end
end
TrackPidAndTechniqueBM("BM", "T1647", "DefenseEvasion_PlistFileModification")
mp.set_mpattribute("BM_PlistModUsingPlistbuddy")
return mp.INFECTED
