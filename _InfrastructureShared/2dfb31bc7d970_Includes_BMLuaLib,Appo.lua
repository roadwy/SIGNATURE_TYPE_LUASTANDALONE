local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
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
L5_5 = "werfault.exe"
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
  L3_3 = L3_3.utf8p1
  L4_4 = L3_3
  L3_3 = L3_3.match
  L5_5 = "([^\\]+)$"
  L3_3 = L3_3(L4_4, L5_5)
  L1_1 = L3_3
  L2_2 = true
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L3_3 = L3_3.utf8p1
    L4_4 = L3_3
    L3_3 = L3_3.match
    L5_5 = "([^\\]+)$"
    L3_3 = L3_3(L4_4, L5_5)
    L1_1 = L3_3
    L2_2 = true
  else
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L3_3 = L3_3.matched
    if L3_3 then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[3]
      L3_3 = L3_3.utf8p1
      L4_4 = L3_3
      L3_3 = L3_3.match
      L5_5 = "([^\\]+)$"
      L3_3 = L3_3(L4_4, L5_5)
      L1_1 = L3_3
      L2_2 = true
    else
      L3_3 = this_sigattrlog
      L3_3 = L3_3[4]
      L3_3 = L3_3.matched
      if L3_3 then
        L3_3 = this_sigattrlog
        L3_3 = L3_3[4]
        L3_3 = L3_3.utf8p1
        L4_4 = L3_3
        L3_3 = L3_3.match
        L5_5 = "([^\\]+)$"
        L3_3 = L3_3(L4_4, L5_5)
        L1_1 = L3_3
        L2_2 = true
      else
        L3_3 = this_sigattrlog
        L3_3 = L3_3[5]
        L3_3 = L3_3.matched
        if L3_3 then
          L3_3 = this_sigattrlog
          L3_3 = L3_3[5]
          L3_3 = L3_3.utf8p1
          L4_4 = L3_3
          L3_3 = L3_3.match
          L5_5 = "([^\\]+)$"
          L3_3 = L3_3(L4_4, L5_5)
          L1_1 = L3_3
          L2_2 = true
        else
          L3_3 = this_sigattrlog
          L3_3 = L3_3[6]
          L3_3 = L3_3.matched
          if L3_3 then
            L3_3 = this_sigattrlog
            L3_3 = L3_3[6]
            L3_3 = L3_3.utf8p1
            L4_4 = L3_3
            L3_3 = L3_3.match
            L5_5 = "([^\\]+)$"
            L3_3 = L3_3(L4_4, L5_5)
            L1_1 = L3_3
          else
            L3_3 = this_sigattrlog
            L3_3 = L3_3[7]
            L3_3 = L3_3.matched
            if L3_3 then
              L3_3 = this_sigattrlog
              L3_3 = L3_3[7]
              L3_3 = L3_3.utf8p1
              L4_4 = L3_3
              L3_3 = L3_3.match
              L5_5 = "([^\\]+)$"
              L3_3 = L3_3(L4_4, L5_5)
              L1_1 = L3_3
            else
              L3_3 = this_sigattrlog
              L3_3 = L3_3[8]
              L3_3 = L3_3.matched
              if L3_3 then
                L3_3 = this_sigattrlog
                L3_3 = L3_3[8]
                L3_3 = L3_3.utf8p1
                L4_4 = L3_3
                L3_3 = L3_3.match
                L5_5 = "([^\\]+)$"
                L3_3 = L3_3(L4_4, L5_5)
                L1_1 = L3_3
              else
                L3_3 = this_sigattrlog
                L3_3 = L3_3[9]
                L3_3 = L3_3.matched
                if L3_3 then
                  L3_3 = this_sigattrlog
                  L3_3 = L3_3[9]
                  L3_3 = L3_3.utf8p1
                  L4_4 = L3_3
                  L3_3 = L3_3.match
                  L5_5 = "([^\\]+)$"
                  L3_3 = L3_3(L4_4, L5_5)
                  L1_1 = L3_3
                else
                  L3_3 = this_sigattrlog
                  L3_3 = L3_3[10]
                  L3_3 = L3_3.matched
                  if L3_3 then
                    L3_3 = this_sigattrlog
                    L3_3 = L3_3[10]
                    L3_3 = L3_3.utf8p1
                    L4_4 = L3_3
                    L3_3 = L3_3.match
                    L5_5 = "([^\\]+)$"
                    L3_3 = L3_3(L4_4, L5_5)
                    L1_1 = L3_3
                  else
                    L3_3 = this_sigattrlog
                    L3_3 = L3_3[11]
                    L3_3 = L3_3.matched
                    if L3_3 then
                      L2_2 = true
                      L3_3 = this_sigattrlog
                      L3_3 = L3_3[11]
                      L3_3 = L3_3.utf8p2
                      L4_4 = L3_3
                      L3_3 = L3_3.find
                      L5_5 = ".home=.* start"
                      L3_3 = L3_3(L4_4, L5_5)
                      if L3_3 then
                        L3_3 = this_sigattrlog
                        L3_3 = L3_3[11]
                        L3_3 = L3_3.utf8p1
                        L4_4 = L3_3
                        L3_3 = L3_3.match
                        L5_5 = "([^\\]+)$"
                        L3_3 = L3_3(L4_4, L5_5)
                        L1_1 = L3_3
                      end
                    else
                      L3_3 = this_sigattrlog
                      L3_3 = L3_3[12]
                      L3_3 = L3_3.matched
                      if L3_3 then
                        L3_3 = this_sigattrlog
                        L3_3 = L3_3[12]
                        L3_3 = L3_3.utf8p2
                        L4_4 = L3_3
                        L3_3 = L3_3.find
                        L5_5 = ".home=.* start"
                        L3_3 = L3_3(L4_4, L5_5)
                        if L3_3 then
                          L3_3 = this_sigattrlog
                          L3_3 = L3_3[12]
                          L3_3 = L3_3.utf8p1
                          L4_4 = L3_3
                          L3_3 = L3_3.match
                          L5_5 = "([^\\]+)$"
                          L3_3 = L3_3(L4_4, L5_5)
                          L1_1 = L3_3
                        end
                      else
                        L3_3 = this_sigattrlog
                        L3_3 = L3_3[13]
                        L3_3 = L3_3.matched
                        if L3_3 then
                          L2_2 = true
                          L3_3 = this_sigattrlog
                          L3_3 = L3_3[13]
                          L3_3 = L3_3.utf8p1
                          L4_4 = L3_3
                          L3_3 = L3_3.match
                          L5_5 = "([^\\]+)$"
                          L3_3 = L3_3(L4_4, L5_5)
                          L1_1 = L3_3
                        else
                          L3_3 = this_sigattrlog
                          L3_3 = L3_3[14]
                          L3_3 = L3_3.matched
                          if L3_3 then
                            L3_3 = this_sigattrlog
                            L3_3 = L3_3[14]
                            L3_3 = L3_3.utf8p1
                            L4_4 = L3_3
                            L3_3 = L3_3.match
                            L5_5 = "([^\\]+)$"
                            L3_3 = L3_3(L4_4, L5_5)
                            L1_1 = L3_3
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
L3_3 = nil
if L2_2 then
  L4_4 = GetPidFromParentImagePath
  L5_5 = L1_1
  L4_4 = L4_4(L5_5)
  L3_3 = L4_4
else
  L4_4 = bm
  L4_4 = L4_4.get_current_process_startup_info
  L4_4 = L4_4()
  if L4_4 then
    L5_5 = L4_4.ppid
    if L5_5 then
      L3_3 = L4_4.ppid
    end
  end
end
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {}
L4_4.AppName = L1_1
L4_4.Pid = L3_3
L4_4.AppCategory = "PFServers"
L5_5 = getWebApplicationType
L6_6 = L3_3
L5_5 = L5_5(L6_6)
L4_4.WebAppName = L5_5
L4_4.Score = 0
L5_5 = MpCommon
L5_5 = L5_5.DoesProcessHaveAttribute
L6_6 = L3_3
L7_7 = "PFApp_Parent"
L5_5 = L5_5(L6_6, L7_7)
if not L5_5 then
  L5_5 = pcall
  L6_6 = MpCommon
  L6_6 = L6_6.AddProcessAttribute
  L7_7 = L3_3
  L6_6 = L5_5(L6_6, L7_7, "PFApp_Parent", safeJsonSerialize(L4_4), true)
  if not L5_5 then
    L7_7 = {}
    L7_7.err = L6_6
    L7_7.AttributeValue = L4_4
    L7_7.SignatureName = "PFA_Parent.A"
    L7_7.ProcessName = L0_0
    bm.trigger_sig("ProcAttribError", safeJsonSerialize(L7_7))
    return mp.CLEAN
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
