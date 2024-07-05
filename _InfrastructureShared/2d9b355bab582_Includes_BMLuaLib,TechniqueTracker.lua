local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = 2
L2_2 = nil
L3_3 = 30
L4_4 = 5
L5_5, L6_6 = nil, nil
L7_7 = "rqsecuritysoftwaredisc"
if this_sigattrlog[1].matched then
  L2_2 = "mdatp"
elseif this_sigattrlog[2].matched then
  L2_2 = "firewall"
elseif this_sigattrlog[3].matched then
  L2_2 = "littlesnitch"
elseif this_sigattrlog[4].matched then
  L2_2 = "opensnitch"
elseif this_sigattrlog[5].matched then
  L2_2 = "avast"
elseif this_sigattrlog[6].matched then
  L2_2 = "avira"
elseif this_sigattrlog[7].matched then
  L2_2 = "mcafee"
elseif this_sigattrlog[8].matched then
  L2_2 = "webprotection"
elseif this_sigattrlog[9].matched then
  L2_2 = "isecespd"
elseif this_sigattrlog[10].matched then
  L2_2 = "macmnsvc"
elseif this_sigattrlog[12].matched then
  L2_2 = "avscan"
elseif this_sigattrlog[13].matched then
  L2_2 = "rtvscand"
elseif this_sigattrlog[14].matched then
  L2_2 = "symcfgd"
elseif this_sigattrlog[15].matched then
  L2_2 = "scmdaemon"
elseif this_sigattrlog[16].matched then
  L2_2 = "symantec"
elseif this_sigattrlog[17].matched then
  L2_2 = "osquery"
elseif this_sigattrlog[18].matched then
  L2_2 = "sophos"
elseif this_sigattrlog[19].matched then
  L2_2 = "elastic"
end
L5_5, L6_6 = pcall(MpCommon.RollingQueueCreate, L7_7, L4_4, L3_3, 1)
if not L5_5 then
  return mp.CLEAN
end
L5_5, L6_6 = pcall(MpCommon.RollingQueueAppend, L7_7, L2_2, "", L3_3)
if not L5_5 then
  return mp.CLEAN
end
L5_5, L6_6 = pcall(MpCommon.RollingQueueCount, L7_7)
if not L5_5 then
  return mp.CLEAN
end
L0_0 = L6_6
if L1_1 < L0_0 then
  TrackPidAndTechniqueBM("BM", "T1518.001", "SecuritySoftwareDiscovery")
  return mp.INFECTED
end
return mp.CLEAN
