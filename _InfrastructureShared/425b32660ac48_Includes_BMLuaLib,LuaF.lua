local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
L1_1 = L0_0
L0_0 = L0_0.lower
L0_0 = L0_0(L1_1)
L1_1 = contains
L2_2 = L0_0
L3_3 = {L4_4, L5_5}
L4_4 = "conhost.exe"
L5_5 = "WerFault.exe"
L1_1 = L1_1(L2_2, L3_3)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
L2_2 = false
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L1_1 = L3_3.utf8p2
  L3_3 = MpCommon
  L3_3 = L3_3.StringRegExpSearch
  L4_4 = "exec\\s+(puma|thin|rails|mongrel) "
  L5_5 = L1_1
  L3_3 = L3_3(L4_4, L5_5)
  if not L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L2_2 = true
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L1_1 = L3_3.utf8p2
    L2_2 = true
  else
    L3_3 = this_sigattrlog
    L3_3 = L3_3[4]
    L3_3 = L3_3.matched
    if L3_3 then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[4]
      L1_1 = L3_3.utf8p2
      L2_2 = true
    else
      L3_3 = this_sigattrlog
      L3_3 = L3_3[5]
      L3_3 = L3_3.matched
      if L3_3 then
        L3_3 = this_sigattrlog
        L3_3 = L3_3[5]
        L1_1 = L3_3.utf8p2
        L2_2 = true
      else
        L3_3 = this_sigattrlog
        L3_3 = L3_3[6]
        L3_3 = L3_3.matched
        if L3_3 then
          L3_3 = this_sigattrlog
          L3_3 = L3_3[6]
          L1_1 = L3_3.utf8p2
          L2_2 = true
        else
          L3_3 = this_sigattrlog
          L3_3 = L3_3[7]
          L3_3 = L3_3.matched
          if L3_3 then
            L3_3 = this_sigattrlog
            L3_3 = L3_3[7]
            L1_1 = L3_3.utf8p2
            L2_2 = true
          else
            L3_3 = this_sigattrlog
            L3_3 = L3_3[8]
            L3_3 = L3_3.matched
            if L3_3 then
              L3_3 = this_sigattrlog
              L3_3 = L3_3[8]
              L1_1 = L3_3.utf8p2
              L2_2 = true
            else
              L3_3 = this_sigattrlog
              L3_3 = L3_3[9]
              L3_3 = L3_3.matched
              if L3_3 then
                L3_3 = this_sigattrlog
                L3_3 = L3_3[9]
                L1_1 = L3_3.utf8p2
                L2_2 = true
              else
                L3_3 = this_sigattrlog
                L3_3 = L3_3[10]
                L3_3 = L3_3.matched
                if L3_3 then
                  L3_3 = this_sigattrlog
                  L3_3 = L3_3[10]
                  L1_1 = L3_3.utf8p2
                  L2_2 = true
                else
                  L3_3 = this_sigattrlog
                  L3_3 = L3_3[2]
                  L3_3 = L3_3.matched
                  if L3_3 then
                    L3_3 = this_sigattrlog
                    L3_3 = L3_3[2]
                    L1_1 = L3_3.utf8p2
                    L3_3 = MpCommon
                    L3_3 = L3_3.StringRegExpSearch
                    L4_4 = "exec\\s+(puma|thin|rails|mongrel) "
                    L5_5 = L1_1
                    L3_3 = L3_3(L4_4, L5_5)
                    if not L3_3 then
                      L3_3 = mp
                      L3_3 = L3_3.CLEAN
                      return L3_3
                    end
                  else
                    L3_3 = this_sigattrlog
                    L3_3 = L3_3[11]
                    L3_3 = L3_3.matched
                    if L3_3 then
                      L3_3 = this_sigattrlog
                      L3_3 = L3_3[11]
                      L1_1 = L3_3.utf8p2
                    else
                      L3_3 = this_sigattrlog
                      L3_3 = L3_3[12]
                      L3_3 = L3_3.matched
                      if L3_3 then
                        L3_3 = this_sigattrlog
                        L3_3 = L3_3[12]
                        L1_1 = L3_3.utf8p2
                      else
                        L3_3 = this_sigattrlog
                        L3_3 = L3_3[13]
                        L3_3 = L3_3.matched
                        if L3_3 then
                          L3_3 = this_sigattrlog
                          L3_3 = L3_3[13]
                          L1_1 = L3_3.utf8p2
                        else
                          L3_3 = this_sigattrlog
                          L3_3 = L3_3[14]
                          L3_3 = L3_3.matched
                          if L3_3 then
                            L3_3 = this_sigattrlog
                            L3_3 = L3_3[14]
                            L1_1 = L3_3.utf8p2
                          else
                            L3_3 = this_sigattrlog
                            L3_3 = L3_3[15]
                            L3_3 = L3_3.matched
                            if L3_3 then
                              L3_3 = this_sigattrlog
                              L3_3 = L3_3[15]
                              L1_1 = L3_3.utf8p2
                            else
                              L3_3 = this_sigattrlog
                              L3_3 = L3_3[16]
                              L3_3 = L3_3.matched
                              if L3_3 then
                                L3_3 = this_sigattrlog
                                L3_3 = L3_3[16]
                                L1_1 = L3_3.utf8p2
                              else
                                L3_3 = this_sigattrlog
                                L3_3 = L3_3[17]
                                L3_3 = L3_3.matched
                                if L3_3 then
                                  L3_3 = this_sigattrlog
                                  L3_3 = L3_3[17]
                                  L1_1 = L3_3.utf8p2
                                else
                                  L3_3 = this_sigattrlog
                                  L3_3 = L3_3[18]
                                  L3_3 = L3_3.matched
                                  if L3_3 then
                                    L3_3 = this_sigattrlog
                                    L3_3 = L3_3[18]
                                    L1_1 = L3_3.utf8p2
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
if not L1_1 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L4_4 = L1_1
L3_3 = L1_1.match
L5_5 = "-a%s+([%d%.]+)"
L3_3 = L3_3(L4_4, L5_5)
L5_5 = L1_1
L4_4 = L1_1.match
L6_6 = "-p%s+([%d]+)"
L4_4 = L4_4(L5_5, L6_6)
if not L3_3 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
if L3_3 and (L3_3 == "127.0.0.1" or L4_4 == "0.0.0.0") then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = L3_3
L6_6 = ":"
L7_7 = L4_4
L5_5 = L5_5 .. L6_6 .. L7_7
L5_5 = L5_5 or "default"
L6_6 = "ruby_webservers_config"
L7_7 = 31536000
L8_8 = 50
L9_9 = AppendToRollingQueue
L10_10 = L6_6
L11_11 = "IP/PORT"
L12_12 = L5_5
L13_13 = L7_7
L9_9(L10_10, L11_11, L12_12, L13_13, L8_8)
L9_9 = nil
if L2_2 then
  L10_10 = GetPidFromParentImagePath
  L11_11 = "ruby.exe"
  L10_10 = L10_10(L11_11)
  L9_9 = L10_10
else
  L10_10 = bm
  L10_10 = L10_10.get_current_process_startup_info
  L10_10 = L10_10()
  if L10_10 then
    L11_11 = L10_10.ppid
    if L11_11 then
      L9_9 = L10_10.ppid
    end
  end
end
if not L9_9 then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
L10_10 = {}
L10_10.AppName = "ruby.exe"
L11_11 = getWebApplicationType
L12_12 = L9_9
L11_11 = L11_11(L12_12)
L10_10.WebAppName = L11_11
L10_10.Pid = L9_9
L10_10.AppCategory = "PFServers"
L10_10.Score = 0
L11_11 = MpCommon
L11_11 = L11_11.DoesProcessHaveAttribute
L12_12 = L9_9
L13_13 = "PFApp_Parent"
L11_11 = L11_11(L12_12, L13_13)
if not L11_11 then
  L11_11 = pcall
  L12_12 = MpCommon
  L12_12 = L12_12.AddProcessAttribute
  L13_13 = L9_9
  L12_12 = L11_11(L12_12, L13_13, "PFApp_Parent", safeJsonSerialize(L10_10), true)
  if not L11_11 then
    L13_13 = {}
    L13_13.err = L12_12
    L13_13.AttributeValue = L10_10
    L13_13.SignatureName = "SetProcAttribRBY.A"
    L13_13.ProcessName = L0_0
    bm.trigger_sig("ProcAttribError", safeJsonSerialize(L13_13))
  end
  if not L2_2 then
    L13_13 = {}
    L13_13.AttributeValue = L10_10
    L13_13.SignatureName = "SetProcAttribRBY.A"
    L13_13.ProcessName = L0_0
    bm.trigger_sig("SetProcessAttrib", safeJsonSerialize(L13_13))
  end
end
L11_11 = bm
L11_11 = L11_11.trigger_sig
L12_12 = "SetProcessAttrib_RubyServr"
L13_13 = safeJsonSerialize
L13_13 = L13_13(L10_10)
L11_11(L12_12, L13_13, L13_13(L10_10))
L11_11 = mp
L11_11 = L11_11.CLEAN
return L11_11
