local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p2
end
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
function processActions(A0_2, A1_3)
  local L2_4
  L2_4 = explode
  L2_4 = L2_4(A0_2, ",")
  A0_2 = L2_4
  L2_4 = {}
  for _FORV_6_, _FORV_7_ in ipairs(A0_2) do
    if _FORV_7_ == "ProcessInfo" then
      L2_4.ProcessInfo = {
        head = sigattr_head,
        tail = sigattr_tail,
        notifications = bm.get_process_notifications(A1_3.ppid),
        startupInfo = A1_3
      }
    elseif _FORV_7_ == "NetworkHistory" then
      L2_4.NetworkHistory = {
        history = bm.GetConnectionHistory(),
        volumes = bm.GetOverallTrafficVolumes()
      }
    elseif _FORV_7_ == "FastRemediation" then
      bm.trigger_sig("Heimdall_ProcessAction", "FastRemediation")
    elseif _FORV_7_ == "SlowRemediation" then
      bm.trigger_sig("Heimdall_ProcessAction", "SlowRemediation")
    elseif _FORV_7_ == "RequestSMS" then
      bm.request_SMS(A1_3.ppid, "l+")
      bm.add_action("SmsAsyncScanEvent", 1000)
    elseif _FORV_7_ == "ProcDump" then
      L2_4.ProcDump = {
        PEB = bm.GetPEBInfo(),
        data = MpCommon.Base64Encode(bm.ReadProcMem(bm.GetPEBInfo().PEBAddr, 2048))
      }
    else
      L2_4[_FORV_7_] = "unk"
    end
  end
  bm.add_related_string("SuspProcReport", safeJsonSerialize(L2_4), bm.RelatedStringBMReport)
  reportTimingData()
  add_parents()
  reportSessionInformation()
end
if not pcall(processActions, L0_0, L1_1) then
  pcall(mp.GetUrlReputation, {
    "http://962b56e5-5eb2-4ed3-8757-3f22f190d202.report"
  }, safeJsonSerialize({
    error = pcall(processActions, L0_0, L1_1)
  }))
end
return mp.INFECTED
