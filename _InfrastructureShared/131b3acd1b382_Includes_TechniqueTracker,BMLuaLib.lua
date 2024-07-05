local L0_0, L1_1, L2_2, L3_3
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].ppid
elseif this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].ppid
elseif this_sigattrlog[3].matched then
  L0_0 = this_sigattrlog[3].ppid
end
if this_sigattrlog[4].matched then
  L2_2 = this_sigattrlog[4].utf8p1
elseif this_sigattrlog[5].matched then
  L2_2 = this_sigattrlog[5].utf8p1
elseif this_sigattrlog[6].matched then
  L2_2 = this_sigattrlog[6].utf8p1
end
if this_sigattrlog[7].matched then
  L1_1 = this_sigattrlog[7].ppid
end
if this_sigattrlog[8].matched then
  L3_3 = this_sigattrlog[8].utf8p1
end
if L0_0 == nil or L1_1 == nil or L2_2 == nil or L3_3 == nil then
  return mp.CLEAN
end
if isTainted(L2_2, "remote_file_created_taint") then
  taint(L3_3, "remote_file_created_taint", 3600)
  TrackPidAndTechniqueBM("BM", "T1105", "CommandAndControl")
  return mp.INFECTED
end
return mp.CLEAN
