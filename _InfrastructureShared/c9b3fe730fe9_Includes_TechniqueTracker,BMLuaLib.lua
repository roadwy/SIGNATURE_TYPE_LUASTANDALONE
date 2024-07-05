local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = "remote_file_created_taint"
L1_1, L2_2, L3_3, L4_4 = nil, nil, nil, nil
if this_sigattrlog[1].matched then
  L1_1 = this_sigattrlog[1].ppid
elseif this_sigattrlog[2].matched then
  L1_1 = this_sigattrlog[2].ppid
elseif this_sigattrlog[3].matched then
  L1_1 = this_sigattrlog[3].ppid
end
if this_sigattrlog[4].matched then
  L3_3 = this_sigattrlog[4].utf8p1
elseif this_sigattrlog[5].matched then
  L3_3 = this_sigattrlog[5].utf8p1
elseif this_sigattrlog[6].matched then
  L3_3 = this_sigattrlog[6].utf8p1
end
if this_sigattrlog[7].matched then
  L2_2 = this_sigattrlog[7].ppid
end
if this_sigattrlog[8].matched then
  L4_4 = this_sigattrlog[8].utf8p1
end
if L1_1 == nil or L2_2 == nil or L3_3 == nil or L4_4 == nil then
  return mp.CLEAN
end
if isTainted(L3_3, L0_0) then
  taint(L4_4, L0_0, 3600)
  TrackPidAndTechniqueBM("BM", "T1105", "CommandAndControl")
  return mp.INFECTED
end
return mp.CLEAN
