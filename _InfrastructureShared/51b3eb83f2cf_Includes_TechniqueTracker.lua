local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 100000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = bm
L2_2 = L2_2.get_imagepath
L2_2 = L2_2()
L2_2 = L1_1(L2_2, L2_2())
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, L2_2()))
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, "\\system32\\svchost.exe", 1, true)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, "\\program files", 1, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L1_1 = L1_1(L2_2, "\\run_windows_", 1, true)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L2_2 = L0_0
        L1_1 = L1_1(L2_2, "f5fltsrv.exe", 1, true)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L2_2 = L0_0
          L1_1 = L1_1(L2_2, "nslookup.exe", 1, true)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L2_2 = L0_0
            L1_1 = L1_1(L2_2, "netsh.exe", 1, true)
            if not L1_1 then
              L1_1 = string
              L1_1 = L1_1.find
              L2_2 = L0_0
              L1_1 = L1_1(L2_2, "deepl.exe", 1, true)
              if not L1_1 then
                L1_1 = string
                L1_1 = L1_1.find
                L2_2 = L0_0
                L1_1 = L1_1(L2_2, "browsercore64.exe", 1, true)
                if not L1_1 then
                  L1_1 = string
                  L1_1 = L1_1.find
                  L2_2 = L0_0
                  L1_1 = L1_1(L2_2, "sihclient.exe", 1, true)
                  if not L1_1 then
                    L1_1 = string
                    L1_1 = L1_1.find
                    L2_2 = L0_0
                    L1_1 = L1_1(L2_2, "vmnat.exe", 1, true)
                    if not L1_1 then
                      L1_1 = string
                      L1_1 = L1_1.find
                      L2_2 = L0_0
                      L1_1 = L1_1(L2_2, "fabricdnsservice.exe", 1, true)
                      if not L1_1 then
                        L1_1 = string
                        L1_1 = L1_1.find
                        L2_2 = L0_0
                        L1_1 = L1_1(L2_2, "msedge.exe", 1, true)
                        if not L1_1 then
                          L1_1 = string
                          L1_1 = L1_1.find
                          L2_2 = L0_0
                          L1_1 = L1_1(L2_2, "btservice.exe", 1, true)
                          if not L1_1 then
                            L1_1 = string
                            L1_1 = L1_1.find
                            L2_2 = L0_0
                            L1_1 = L1_1(L2_2, "\\loom\\", 1, true)
                          end
                        end
                      end
                    end
                  end
                end
              end
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
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(L1_1.command_line)
if string.find(L2_2, "clienthealth", 1, true) then
  return mp.CLEAN
end
if GetTaintLevelHR() == nil or GetTaintLevelHR() ~= "Medium" and GetTaintLevelHR() ~= "High" then
  return mp.CLEAN
end
if IsDetectionThresholdMet("BM") and (IsTacticObservedForPid("BM", "processinjection_target") or IsTacticObservedForPid("BM", "discovery")) then
  return mp.INFECTED
end
return mp.CLEAN
