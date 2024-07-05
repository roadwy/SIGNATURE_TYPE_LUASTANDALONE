local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L0_0 = L1_1.utf8p2
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  L3_3 = L1_1
  L2_2 = L1_1.match
  L4_4 = "msdt:[-/]id[%s]+([^%s]+)"
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = {}
  L3_3.printerdiagnostic = true
  L3_3.audioplaybackdiagnostic = true
  L3_3.networkdiagnosticsnetworkadapter = true
  L3_3.networkdiagnosticsweb = true
  L3_3.devicediagnostic = true
  L3_3.networkdiagnosticsinbound = true
  L4_4 = L3_3[L2_2]
  if L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L5_5 = L1_1
  L4_4 = L1_1.find
  L6_6 = "-ep%s+t?s?controlpanel"
  L4_4 = L4_4(L5_5, L6_6)
  if L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L5_5 = L1_1
  L4_4 = L1_1.find
  L6_6 = "-context"
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
  if L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L5_5 = L1_1
  L4_4 = L1_1.find
  L6_6 = "systemsetting"
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
  if L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = bm
  L4_4 = L4_4.get_current_process_startup_info
  L4_4 = L4_4()
  L5_5 = L4_4.command_line
  if L5_5 ~= nil then
    L5_5 = string
    L5_5 = L5_5.lower
    L6_6 = L4_4.command_line
    L5_5 = L5_5(L6_6)
    L6_6 = L5_5.find
    L10_10 = true
    L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
    if L6_6 then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
  end
  if L2_2 == "pcwdiagnostic" then
    L6_6 = L1_1
    L5_5 = L1_1.find
    L5_5 = L5_5(L6_6, L7_7)
    if L5_5 then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = TrackPidAndTechniqueBM
    L6_6 = "BM"
    L5_5(L6_6, L7_7, L8_8)
    L5_5 = MpCommon
    L5_5 = L5_5.ExpandEnvironmentVariables
    L6_6 = "%windir%\\system32\\sdiagnhost.exe"
    L5_5 = L5_5(L6_6)
    L6_6 = sysio
    L6_6 = L6_6.GetProcessFromFileName
    L6_6 = L6_6(L7_7)
    if L6_6 ~= nil then
      if L7_7 > 0 then
        for L10_10, L11_11 in L7_7(L8_8) do
          L12_12 = string
          L12_12 = L12_12.format
          L12_12 = L12_12("pid:%d,ProcessStart:%u", L11_11.pid, L11_11.starttime)
          TrackPidAndTechniqueBM(L12_12, "T1218", "msdt_pcwdiag_target")
        end
      end
    end
  end
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
