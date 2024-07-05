local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = {}
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.utf8p1
L1_1.scenario = L2_2
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.utf8p2
L1_1.rawchain = L2_2
L2_2 = bm
L2_2 = L2_2.add_related_string
L2_2(L3_3, L4_4, L5_5)
L2_2 = bm
L2_2 = L2_2.add_related_string
L2_2(L3_3, L4_4, L5_5)
L2_2 = bm
L2_2 = L2_2.trigger_sig
L2_2(L3_3, L4_4)
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = {}
  L2_2.path = L3_3
  L2_2.cmd = L3_3
  L2_2.name = L3_3
  L1_1.bmdetection = L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = {}
  L2_2.path = L3_3
  L2_2.name = L3_3
  L1_1.filedetection = L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = {}
  L2_2.detection_tyep = L3_3
  L2_2.genransommeta = L3_3
  L1_1.GenRansom = L2_2
end
L2_2 = explode
L2_2 = L2_2(L3_3, L4_4)
for _FORV_6_ = 2, #L2_2 do
  pcall(bm.add_related_process, L2_2[_FORV_6_])
end
L1_1.triggersessioninformation = L4_4
L4_4(L5_5, safeJsonSerialize(L1_1), bm.RelatedStringBMReport)
L5_5.UserName = MpCommon.WTSUserName
L5_5.Domain = MpCommon.WTSDomainName
L5_5.ClientIP = MpCommon.WTSClientAddress
if querySessionInformation(L0_0.ppid, L5_5).UserName ~= nil and querySessionInformation(L0_0.ppid, L5_5).Domain ~= nil then
  L4_4.USER_INFO = scrubData(querySessionInformation(L0_0.ppid, L5_5).Domain) .. ":" .. scrubData(querySessionInformation(L0_0.ppid, L5_5).UserName)
  L4_4.SIG_CONTEXT = "BM:" .. L1_1.scenario
  L4_4.CONTENT_SOURCE = L1_1.rawchain
  L4_4.TAG = "NOLOOKUP"
  L4_4.DETECTION_NAME = ""
  if L1_1.bmdetection ~= nil then
    L4_4.DETECTION_NAME = L1_1.bmdetection.name
  end
  if L1_1.filedetection ~= nil then
    L4_4.DETECTION_NAME = L4_4.DETECTION_NAME .. ";" .. L1_1.filedetection.name
  end
  if querySessionInformation(L0_0.ppid, L5_5).ClientIP ~= nil then
    L4_4.SOURCE_IP = querySessionInformation(L0_0.ppid, L5_5).ClientIP.Address or ""
  end
  pcall(mp.GetUrlReputation, {
    "http://9ffced16-b0f2-4cf0-b08a-ef2c11396d05.info"
  }, L4_4)
end
return mp.INFECTED
