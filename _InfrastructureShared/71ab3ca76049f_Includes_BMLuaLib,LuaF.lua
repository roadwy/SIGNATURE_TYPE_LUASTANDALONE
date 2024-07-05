local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
L0_0 = IsProcNameInParentProcessTree
L1_1 = "BM"
L2_2 = {
  L3_3,
  L4_4,
  L5_5
}
L3_3 = "senseir.exe"
L4_4 = "pangphip.exe"
L5_5 = "agentexecutor.exe"
L0_0 = L0_0(L1_1, L2_2)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0, L1_1 = nil, nil
L2_2 = this_sigattrlog
L2_2 = L2_2[9]
L2_2 = L2_2.matched
if L2_2 then
  L0_0 = "Ipconfig"
  L2_2 = this_sigattrlog
  L1_1 = L2_2[9]
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[10]
  L2_2 = L2_2.matched
  if L2_2 then
    L0_0 = "NetstatN"
    L2_2 = this_sigattrlog
    L1_1 = L2_2[10]
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[11]
    L2_2 = L2_2.matched
    if L2_2 then
      L0_0 = "NetstatS"
      L2_2 = this_sigattrlog
      L1_1 = L2_2[11]
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[12]
      L2_2 = L2_2.matched
      if L2_2 then
        L0_0 = "Arp"
        L2_2 = this_sigattrlog
        L1_1 = L2_2[12]
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[13]
        L2_2 = L2_2.matched
        if L2_2 then
          L0_0 = "RoutePrint"
          L2_2 = this_sigattrlog
          L1_1 = L2_2[13]
        else
          L2_2 = this_sigattrlog
          L2_2 = L2_2[14]
          L2_2 = L2_2.matched
          if L2_2 then
            L0_0 = "QueryUser"
            L2_2 = this_sigattrlog
            L1_1 = L2_2[14]
          else
            L2_2 = this_sigattrlog
            L2_2 = L2_2[15]
            L2_2 = L2_2.matched
            if L2_2 then
              L0_0 = "Whoami"
              L2_2 = this_sigattrlog
              L1_1 = L2_2[15]
            else
              L2_2 = this_sigattrlog
              L2_2 = L2_2[16]
              L2_2 = L2_2.matched
              if L2_2 then
                L0_0 = "NetLocalgroup"
                L2_2 = this_sigattrlog
                L1_1 = L2_2[16]
              else
                L2_2 = this_sigattrlog
                L2_2 = L2_2[17]
                L2_2 = L2_2.matched
                if L2_2 then
                  L0_0 = "NetGrpDomain"
                  L2_2 = this_sigattrlog
                  L1_1 = L2_2[17]
                else
                  L2_2 = this_sigattrlog
                  L2_2 = L2_2[18]
                  L2_2 = L2_2.matched
                  if L2_2 then
                    L0_0 = "NetUsrDomain"
                    L2_2 = this_sigattrlog
                    L1_1 = L2_2[18]
                  else
                    L2_2 = this_sigattrlog
                    L2_2 = L2_2[19]
                    L2_2 = L2_2.matched
                    if L2_2 then
                      L0_0 = "NetUser"
                      L2_2 = this_sigattrlog
                      L1_1 = L2_2[19]
                    else
                      L2_2 = this_sigattrlog
                      L2_2 = L2_2[20]
                      L2_2 = L2_2.matched
                      if L2_2 then
                        L0_0 = "NetGroup"
                        L2_2 = this_sigattrlog
                        L1_1 = L2_2[20]
                      else
                        L2_2 = this_sigattrlog
                        L2_2 = L2_2[21]
                        L2_2 = L2_2.matched
                        if L2_2 then
                          L0_0 = "NetShare"
                          L2_2 = this_sigattrlog
                          L1_1 = L2_2[21]
                        else
                          L2_2 = this_sigattrlog
                          L2_2 = L2_2[22]
                          L2_2 = L2_2.matched
                          if L2_2 then
                            L0_0 = "NetView"
                            L2_2 = this_sigattrlog
                            L1_1 = L2_2[22]
                          else
                            L2_2 = this_sigattrlog
                            L2_2 = L2_2[23]
                            L2_2 = L2_2.matched
                            if L2_2 then
                              L0_0 = "NetAccounts"
                              L2_2 = this_sigattrlog
                              L1_1 = L2_2[23]
                            else
                              L2_2 = this_sigattrlog
                              L2_2 = L2_2[24]
                              L2_2 = L2_2.matched
                              if L2_2 then
                                L0_0 = "NetStat"
                                L2_2 = this_sigattrlog
                                L1_1 = L2_2[24]
                              else
                                L2_2 = this_sigattrlog
                                L2_2 = L2_2[25]
                                L2_2 = L2_2.matched
                                if L2_2 then
                                  L0_0 = "NetFile"
                                  L2_2 = this_sigattrlog
                                  L1_1 = L2_2[25]
                                else
                                  L2_2 = this_sigattrlog
                                  L2_2 = L2_2[26]
                                  L2_2 = L2_2.matched
                                  if L2_2 then
                                    L0_0 = "NetConfig"
                                    L2_2 = this_sigattrlog
                                    L1_1 = L2_2[26]
                                  else
                                    L2_2 = this_sigattrlog
                                    L2_2 = L2_2[27]
                                    L2_2 = L2_2.matched
                                    if L2_2 then
                                      L0_0 = "Systeminfo"
                                      L2_2 = this_sigattrlog
                                      L1_1 = L2_2[27]
                                    else
                                      L2_2 = this_sigattrlog
                                      L2_2 = L2_2[28]
                                      L2_2 = L2_2.matched
                                      if L2_2 then
                                        L0_0 = "NltestDomain"
                                        L2_2 = this_sigattrlog
                                        L1_1 = L2_2[28]
                                      else
                                        L2_2 = this_sigattrlog
                                        L2_2 = L2_2[30]
                                        L2_2 = L2_2.matched
                                        if L2_2 then
                                          L0_0 = "NltestAll"
                                          L2_2 = this_sigattrlog
                                          L1_1 = L2_2[30]
                                        else
                                          L2_2 = this_sigattrlog
                                          L2_2 = L2_2[29]
                                          L2_2 = L2_2.matched
                                          if L2_2 then
                                            L0_0 = "NltestDclist"
                                            L2_2 = this_sigattrlog
                                            L1_1 = L2_2[29]
                                          else
                                            L2_2 = this_sigattrlog
                                            L2_2 = L2_2[31]
                                            L2_2 = L2_2.matched
                                            if L2_2 then
                                              L0_0 = "Pingdomain"
                                              L2_2 = this_sigattrlog
                                              L1_1 = L2_2[31]
                                            else
                                              L2_2 = this_sigattrlog
                                              L2_2 = L2_2[32]
                                              L2_2 = L2_2.matched
                                              if L2_2 then
                                                L0_0 = "CmdSet"
                                                L2_2 = this_sigattrlog
                                                L1_1 = L2_2[32]
                                              else
                                                L2_2 = mp
                                                L2_2 = L2_2.CLEAN
                                                return L2_2
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
L2_2 = {}
L3_3 = {L4_4, L5_5}
L4_4 = "ercservice.exe"
L5_5 = "qualysagent.exe"
L2_2.Ipconfig = L3_3
L3_3 = {L4_4}
L4_4 = "ampwatchdog.exe"
L2_2.NetStatN = L3_3
L3_3 = {}
L2_2.NetStatS = L3_3
L3_3 = {}
L2_2.Arp = L3_3
L3_3 = {L4_4}
L4_4 = "waappagent.exe"
L2_2.RoutePrint = L3_3
L3_3 = {L4_4, L5_5}
L4_4 = "taniumclient.exe"
L5_5 = "mssense.exe"
L2_2.QueryUser = L3_3
L3_3 = {}
L2_2.Whoami = L3_3
L3_3 = {L4_4}
L4_4 = "emsystem.exe"
L2_2.NetLocalgroup = L3_3
L3_3 = {}
L2_2.NetGrpDomain = L3_3
L3_3 = {}
L2_2.NetUsrDomain = L3_3
L3_3 = {L4_4}
L4_4 = "dagent.exe"
L2_2.NetUser = L3_3
L3_3 = {}
L2_2.NetGroup = L3_3
L3_3 = {L4_4, L5_5}
L4_4 = "sqlps.exe"
L5_5 = "java.exe"
L2_2.NetShare = L3_3
L3_3 = {L4_4}
L4_4 = "oneagentplugin.exe"
L2_2.NetView = L3_3
L3_3 = {}
L2_2.NetAccounts = L3_3
L3_3 = {}
L2_2.NetStat = L3_3
L3_3 = {}
L2_2.NetFile = L3_3
L3_3 = {}
L2_2.NetConfig = L3_3
L3_3 = {L4_4, L5_5}
L4_4 = "dartcli.exe"
L5_5 = "java.exe"
L2_2.Systeminfo = L3_3
L3_3 = {}
L2_2.NltestDomain = L3_3
L3_3 = {}
L2_2.NltestAll = L3_3
L3_3 = {}
L2_2.NltestDclist = L3_3
L3_3 = {}
L2_2.Pingdomain = L3_3
L3_3 = {
  L4_4,
  L5_5,
  L6_6
}
L4_4 = "eclipse.exe"
L5_5 = "javaw.exe"
L6_6 = "java.exe"
L2_2.CmdSet = L3_3
L3_3 = IsProcNameInParentProcessTree
L4_4 = "BM"
L5_5 = L2_2[L0_0]
L3_3 = L3_3(L4_4, L5_5)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {}
L3_3.Ipconfig = 3
L3_3.NetStatN = 9
L3_3.NetStatS = 12
L3_3.Arp = 10
L3_3.RoutePrint = 6
L3_3.QueryUser = 3
L3_3.Whoami = 3
L3_3.NetLocalgroup = 3
L3_3.NetGroupDomain = 3
L3_3.NetUserDomain = 5
L3_3.NetUser = 3
L3_3.NetGroup = 3
L3_3.NetShare = 4
L3_3.NetView = 5
L3_3.NetAccounts = 2
L3_3.NetStat = 17
L3_3.NetFile = 16
L3_3.NetConfig = 5
L3_3.Systeminfo = 3
L3_3.NltestDomain = 6
L3_3.NltestAll = 12
L3_3.NltestDclist = 9
L3_3.Pingdomain = 3
L3_3.CmdSet = 2
L4_4 = L3_3[L0_0]
L4_4 = L4_4 or 0
L5_5 = {}
L5_5[20] = "L"
L5_5[40] = "M"
L5_5[60] = "H"
L5_5[80] = "H+"
L6_6 = {}
L6_6[15] = "L"
L6_6[30] = "M"
L6_6[45] = "H"
L6_6[60] = "H+"
L7_7 = "ReconTracking"
L8_8 = 14400
L9_9 = 100
L10_10 = "|"
L11_11 = bm
L11_11 = L11_11.get_current_process_startup_info
L11_11 = L11_11()
L12_12 = reportSessionInformation
L12_12 = L12_12()
L13_13 = L11_11.ppid
L14_14 = L10_10
L15_15 = L1_1.ppid
L16_16 = L10_10
L17_17 = L1_1.utf8p1
L13_13 = L13_13 .. L14_14 .. L15_15 .. L16_16 .. L17_17 .. L10_10 .. L0_0 .. L10_10 .. L1_1.utf8p2
L14_14 = AppendToRollingQueue
L15_15 = L7_7
L16_16 = L13_13
L17_17 = L4_4
L14_14(L15_15, L16_16, L17_17, L8_8, L9_9)
L14_14 = L12_12.User
if L14_14 ~= nil then
  L14_14 = L12_12.User
  L14_14 = L14_14.UserName
  if L14_14 ~= nil then
    L14_14 = L12_12.Session
    if L14_14 ~= nil then
      L14_14 = L12_12.Session
      L14_14 = L14_14.Id
    end
  end
elseif L14_14 == nil then
  L14_14 = mp
  L14_14 = L14_14.CLEAN
  return L14_14
end
L14_14 = L7_7
L15_15 = "-"
L16_16 = L12_12.User
L16_16 = L16_16.UserName
L17_17 = "[::]"
L14_14 = L14_14 .. L15_15 .. L16_16 .. L17_17 .. tostring(L12_12.Session.Id)
L15_15 = AppendToRollingQueue
L16_16 = L14_14
L17_17 = L13_13
L15_15(L16_16, L17_17, L4_4, L8_8, L9_9)
L15_15 = GetRollingQueueSumOfValues
L16_16 = L14_14
L15_15 = L15_15(L16_16)
L16_16 = CheckNewThresholdMet
L17_17 = L15_15.sum
L17_17 = L16_16(L17_17, L4_4, L6_6)
if L16_16 then
  L1_1 = copyBMEvent(L1_1)
  bm.add_related_string("MassRecon_" .. L17_17 .. "_User", safeJsonSerialize({score = L15_15, events = L1_1}), bm.RelatedStringBMReport)
  if L17_17 == "H+" then
    reportMassReconHistory(L14_14, L17_17, "_User")
    return mp.INFECTED
  end
end
L15_15 = GetRollingQueueSumOfValues(L7_7)
L16_16, L17_17 = CheckNewThresholdMet(L15_15.sum, L4_4, L5_5)
if L16_16 then
  L1_1 = copyBMEvent(L1_1)
  bm.trigger_sig("MassRecon_" .. L17_17 .. "_Machine", safeJsonSerialize({score = L15_15, events = L1_1}))
  if L17_17 == "H+" then
    reportMassReconHistory(L7_7, L17_17, "_Machine")
    return mp.INFECTED
  end
end
return mp.CLEAN
