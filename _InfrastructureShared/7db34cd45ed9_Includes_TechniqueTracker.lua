local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[5]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[5]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = bm
    L1_1 = L1_1.get_imagepath
    L2_2 = L1_1()
    L0_0 = L0_0(L1_1, L2_2, L1_1())
    if L0_0 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L1_1 = L1_1(L2_2, "\\program files", 1, true)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L2_2 = L0_0
        L1_1 = L1_1(L2_2, "\\sysmon", 1, true)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L2_2 = L0_0
          L1_1 = L1_1(L2_2, "\\sophos", 1, true)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L2_2 = L0_0
            L1_1 = L1_1(L2_2, "\\threatsonar", 1, true)
            if not L1_1 then
              L1_1 = string
              L1_1 = L1_1.find
              L2_2 = L0_0
              L1_1 = L1_1(L2_2, "tenable_mw_scan", 1, true)
              if not L1_1 then
                L1_1 = string
                L1_1 = L1_1.find
                L2_2 = L0_0
                L1_1 = L1_1(L2_2, "\\cynetms", 1, true)
                if not L1_1 then
                  L1_1 = string
                  L1_1 = L1_1.find
                  L2_2 = L0_0
                  L1_1 = L1_1(L2_2, "\\xenldr", 1, true)
                end
              end
            end
          end
        end
      elseif L1_1 then
        L1_1 = mp
        L1_1 = L1_1.CLEAN
        return L1_1
      end
    end
    L1_1 = string
    L1_1 = L1_1.match
    L2_2 = this_sigattrlog
    L2_2 = L2_2[5]
    L2_2 = L2_2.utf8p1
    L1_1 = L1_1(L2_2, "(%d+):")
    L2_2 = tonumber
    L2_2 = L2_2(L1_1)
    L1_1 = L2_2
    L2_2 = mp
    L2_2 = L2_2.GetPPidFromPid
    L2_2 = L2_2(L1_1)
    if L2_2 == nil then
      return mp.CLEAN
    end
    if MpCommon.GetImagePathFromPid(L2_2) and string.find(MpCommon.GetImagePathFromPid(L2_2):lower(), "\\windows\\system32\\lsass.exe", 1, true) then
      bm.request_SMS(bm.get_current_process_startup_info().ppid, "H")
      TrackCustomPersistContextNameByPPID("set", bm.get_current_process_startup_info().ppid, "MimikatzTrigger")
      bm.add_action("SmsAsyncScanEvent", 1000)
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
