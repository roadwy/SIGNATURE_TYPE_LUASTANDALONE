local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = L1_1.ppid
  if L2_2 ~= nil then
    L2_2 = L1_1.ppid
    if L2_2 ~= "" then
      L2_2 = L1_1.command_line
    end
  end
elseif L2_2 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.command_line
L3_3 = string
L3_3 = L3_3.find
L4_4 = L2_2
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 == nil then
  L3_3 = string
  L3_3 = L3_3.find
  L4_4 = L2_2
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
  if L3_3 == nil then
    L3_3 = string
    L3_3 = L3_3.find
    L4_4 = L2_2
    L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
  end
elseif L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = this_sigattrlog
L3_3 = L3_3[4]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[4]
  L3_3 = L3_3.utf8p2
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[4]
    L3_3 = L3_3.utf8p2
    L4_4 = L3_3
    L3_3 = L3_3.lower
    L3_3 = L3_3(L4_4)
    L0_0 = L3_3
  end
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[5]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[5]
    L3_3 = L3_3.utf8p2
    if L3_3 ~= nil then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[5]
      L3_3 = L3_3.utf8p2
      L4_4 = L3_3
      L3_3 = L3_3.lower
      L3_3 = L3_3(L4_4)
      L0_0 = L3_3
    end
  else
    L3_3 = this_sigattrlog
    L3_3 = L3_3[6]
    L3_3 = L3_3.matched
    if L3_3 then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[6]
      L3_3 = L3_3.utf8p2
      if L3_3 ~= nil then
        L3_3 = this_sigattrlog
        L3_3 = L3_3[6]
        L3_3 = L3_3.utf8p2
        L4_4 = L3_3
        L3_3 = L3_3.lower
        L3_3 = L3_3(L4_4)
        L0_0 = L3_3
      end
    else
      L3_3 = this_sigattrlog
      L3_3 = L3_3[7]
      L3_3 = L3_3.matched
      if L3_3 then
        L3_3 = this_sigattrlog
        L3_3 = L3_3[7]
        L3_3 = L3_3.utf8p2
        if L3_3 ~= nil then
          L3_3 = this_sigattrlog
          L3_3 = L3_3[7]
          L3_3 = L3_3.utf8p2
          L4_4 = L3_3
          L3_3 = L3_3.lower
          L3_3 = L3_3(L4_4)
          L0_0 = L3_3
        end
      else
        L3_3 = this_sigattrlog
        L3_3 = L3_3[8]
        L3_3 = L3_3.matched
        if L3_3 then
          L3_3 = this_sigattrlog
          L3_3 = L3_3[8]
          L3_3 = L3_3.utf8p2
          if L3_3 ~= nil then
            L3_3 = this_sigattrlog
            L3_3 = L3_3[8]
            L3_3 = L3_3.utf8p2
            L4_4 = L3_3
            L3_3 = L3_3.lower
            L3_3 = L3_3(L4_4)
            L0_0 = L3_3
          end
        else
          L3_3 = this_sigattrlog
          L3_3 = L3_3[9]
          L3_3 = L3_3.matched
          if L3_3 then
            L3_3 = this_sigattrlog
            L3_3 = L3_3[9]
            L3_3 = L3_3.utf8p2
            if L3_3 ~= nil then
              L3_3 = this_sigattrlog
              L3_3 = L3_3[9]
              L3_3 = L3_3.utf8p2
              L4_4 = L3_3
              L3_3 = L3_3.lower
              L3_3 = L3_3(L4_4)
              L0_0 = L3_3
            end
          else
            L3_3 = this_sigattrlog
            L3_3 = L3_3[10]
            L3_3 = L3_3.matched
            if L3_3 then
              L3_3 = this_sigattrlog
              L3_3 = L3_3[10]
              L3_3 = L3_3.utf8p2
              if L3_3 ~= nil then
                L3_3 = this_sigattrlog
                L3_3 = L3_3[10]
                L3_3 = L3_3.utf8p2
                L4_4 = L3_3
                L3_3 = L3_3.lower
                L3_3 = L3_3(L4_4)
                L0_0 = L3_3
              end
            else
              L3_3 = this_sigattrlog
              L3_3 = L3_3[11]
              L3_3 = L3_3.matched
              if L3_3 then
                L3_3 = this_sigattrlog
                L3_3 = L3_3[11]
                L3_3 = L3_3.utf8p2
                if L3_3 ~= nil then
                  L3_3 = this_sigattrlog
                  L3_3 = L3_3[11]
                  L3_3 = L3_3.utf8p2
                  L4_4 = L3_3
                  L3_3 = L3_3.lower
                  L3_3 = L3_3(L4_4)
                  L0_0 = L3_3
                end
              else
                L3_3 = this_sigattrlog
                L3_3 = L3_3[12]
                L3_3 = L3_3.matched
                if L3_3 then
                  L3_3 = this_sigattrlog
                  L3_3 = L3_3[12]
                  L3_3 = L3_3.utf8p2
                  if L3_3 ~= nil then
                    L3_3 = this_sigattrlog
                    L3_3 = L3_3[12]
                    L3_3 = L3_3.utf8p2
                    L4_4 = L3_3
                    L3_3 = L3_3.lower
                    L3_3 = L3_3(L4_4)
                    L0_0 = L3_3
                  end
                else
                  L3_3 = this_sigattrlog
                  L3_3 = L3_3[13]
                  L3_3 = L3_3.matched
                  if L3_3 then
                    L3_3 = this_sigattrlog
                    L3_3 = L3_3[13]
                    L3_3 = L3_3.utf8p2
                    if L3_3 ~= nil then
                      L3_3 = this_sigattrlog
                      L3_3 = L3_3[13]
                      L3_3 = L3_3.utf8p2
                      L4_4 = L3_3
                      L3_3 = L3_3.lower
                      L3_3 = L3_3(L4_4)
                      L0_0 = L3_3
                    end
                  else
                    L3_3 = this_sigattrlog
                    L3_3 = L3_3[14]
                    L3_3 = L3_3.matched
                    if L3_3 then
                      L3_3 = this_sigattrlog
                      L3_3 = L3_3[14]
                      L3_3 = L3_3.utf8p2
                      if L3_3 ~= nil then
                        L3_3 = this_sigattrlog
                        L3_3 = L3_3[14]
                        L3_3 = L3_3.utf8p2
                        L4_4 = L3_3
                        L3_3 = L3_3.lower
                        L3_3 = L3_3(L4_4)
                        L0_0 = L3_3
                      end
                    else
                      L3_3 = this_sigattrlog
                      L3_3 = L3_3[23]
                      L3_3 = L3_3.matched
                      if L3_3 then
                        L3_3 = this_sigattrlog
                        L3_3 = L3_3[23]
                        L3_3 = L3_3.utf8p2
                        if L3_3 ~= nil then
                          L3_3 = this_sigattrlog
                          L3_3 = L3_3[23]
                          L3_3 = L3_3.utf8p2
                          L4_4 = L3_3
                          L3_3 = L3_3.lower
                          L3_3 = L3_3(L4_4)
                          L0_0 = L3_3
                        end
                      else
                        L3_3 = this_sigattrlog
                        L3_3 = L3_3[24]
                        L3_3 = L3_3.matched
                        if L3_3 then
                          L3_3 = this_sigattrlog
                          L3_3 = L3_3[24]
                          L3_3 = L3_3.utf8p2
                          if L3_3 ~= nil then
                            L3_3 = this_sigattrlog
                            L3_3 = L3_3[24]
                            L3_3 = L3_3.utf8p2
                            L4_4 = L3_3
                            L3_3 = L3_3.lower
                            L3_3 = L3_3(L4_4)
                            L0_0 = L3_3
                          end
                        else
                          L3_3 = this_sigattrlog
                          L3_3 = L3_3[25]
                          L3_3 = L3_3.matched
                          if L3_3 then
                            L3_3 = this_sigattrlog
                            L3_3 = L3_3[25]
                            L3_3 = L3_3.utf8p2
                            if L3_3 ~= nil then
                              L3_3 = this_sigattrlog
                              L3_3 = L3_3[25]
                              L3_3 = L3_3.utf8p2
                              L4_4 = L3_3
                              L3_3 = L3_3.lower
                              L3_3 = L3_3(L4_4)
                              L0_0 = L3_3
                            end
                          else
                            L3_3 = this_sigattrlog
                            L3_3 = L3_3[26]
                            L3_3 = L3_3.matched
                            if L3_3 then
                              L3_3 = this_sigattrlog
                              L3_3 = L3_3[26]
                              L3_3 = L3_3.utf8p2
                              if L3_3 ~= nil then
                                L3_3 = this_sigattrlog
                                L3_3 = L3_3[26]
                                L3_3 = L3_3.utf8p2
                                L4_4 = L3_3
                                L3_3 = L3_3.lower
                                L3_3 = L3_3(L4_4)
                                L0_0 = L3_3
                              end
                            else
                              L3_3 = this_sigattrlog
                              L3_3 = L3_3[27]
                              L3_3 = L3_3.matched
                              if L3_3 then
                                L3_3 = this_sigattrlog
                                L3_3 = L3_3[27]
                                L3_3 = L3_3.utf8p2
                                if L3_3 ~= nil then
                                  L3_3 = this_sigattrlog
                                  L3_3 = L3_3[27]
                                  L3_3 = L3_3.utf8p2
                                  L4_4 = L3_3
                                  L3_3 = L3_3.lower
                                  L3_3 = L3_3(L4_4)
                                  L0_0 = L3_3
                                end
                              else
                                L3_3 = this_sigattrlog
                                L3_3 = L3_3[28]
                                L3_3 = L3_3.matched
                                if L3_3 then
                                  L3_3 = this_sigattrlog
                                  L3_3 = L3_3[28]
                                  L3_3 = L3_3.utf8p2
                                  if L3_3 ~= nil then
                                    L3_3 = this_sigattrlog
                                    L3_3 = L3_3[28]
                                    L3_3 = L3_3.utf8p2
                                    L4_4 = L3_3
                                    L3_3 = L3_3.lower
                                    L3_3 = L3_3(L4_4)
                                    L0_0 = L3_3
                                  end
                                else
                                  L3_3 = this_sigattrlog
                                  L3_3 = L3_3[29]
                                  L3_3 = L3_3.matched
                                  if L3_3 then
                                    L3_3 = this_sigattrlog
                                    L3_3 = L3_3[29]
                                    L3_3 = L3_3.utf8p2
                                    if L3_3 ~= nil then
                                      L3_3 = this_sigattrlog
                                      L3_3 = L3_3[29]
                                      L3_3 = L3_3.utf8p2
                                      L4_4 = L3_3
                                      L3_3 = L3_3.lower
                                      L3_3 = L3_3(L4_4)
                                      L0_0 = L3_3
                                    end
                                  else
                                    L3_3 = this_sigattrlog
                                    L3_3 = L3_3[30]
                                    L3_3 = L3_3.matched
                                    if L3_3 then
                                      L3_3 = this_sigattrlog
                                      L3_3 = L3_3[30]
                                      L3_3 = L3_3.utf8p2
                                      if L3_3 ~= nil then
                                        L3_3 = this_sigattrlog
                                        L3_3 = L3_3[30]
                                        L3_3 = L3_3.utf8p2
                                        L4_4 = L3_3
                                        L3_3 = L3_3.lower
                                        L3_3 = L3_3(L4_4)
                                        L0_0 = L3_3
                                      end
                                    else
                                      L3_3 = this_sigattrlog
                                      L3_3 = L3_3[15]
                                      L3_3 = L3_3.matched
                                      if L3_3 then
                                        L3_3 = this_sigattrlog
                                        L3_3 = L3_3[15]
                                        L3_3 = L3_3.utf8p2
                                        if L3_3 ~= nil then
                                          L3_3 = this_sigattrlog
                                          L3_3 = L3_3[15]
                                          L3_3 = L3_3.utf8p2
                                          L4_4 = L3_3
                                          L3_3 = L3_3.lower
                                          L3_3 = L3_3(L4_4)
                                          L0_0 = L3_3
                                        end
                                      else
                                        L3_3 = this_sigattrlog
                                        L3_3 = L3_3[16]
                                        L3_3 = L3_3.matched
                                        if L3_3 then
                                          L3_3 = this_sigattrlog
                                          L3_3 = L3_3[16]
                                          L3_3 = L3_3.utf8p2
                                          if L3_3 ~= nil then
                                            L3_3 = this_sigattrlog
                                            L3_3 = L3_3[16]
                                            L3_3 = L3_3.utf8p2
                                            L4_4 = L3_3
                                            L3_3 = L3_3.lower
                                            L3_3 = L3_3(L4_4)
                                            L0_0 = L3_3
                                          end
                                        else
                                          L3_3 = this_sigattrlog
                                          L3_3 = L3_3[17]
                                          L3_3 = L3_3.matched
                                          if L3_3 then
                                            L3_3 = this_sigattrlog
                                            L3_3 = L3_3[17]
                                            L3_3 = L3_3.utf8p2
                                            if L3_3 ~= nil then
                                              L3_3 = this_sigattrlog
                                              L3_3 = L3_3[17]
                                              L3_3 = L3_3.utf8p2
                                              L4_4 = L3_3
                                              L3_3 = L3_3.lower
                                              L3_3 = L3_3(L4_4)
                                              L0_0 = L3_3
                                            end
                                          else
                                            L3_3 = this_sigattrlog
                                            L3_3 = L3_3[18]
                                            L3_3 = L3_3.matched
                                            if L3_3 then
                                              L3_3 = this_sigattrlog
                                              L3_3 = L3_3[18]
                                              L3_3 = L3_3.utf8p2
                                              if L3_3 ~= nil then
                                                L3_3 = this_sigattrlog
                                                L3_3 = L3_3[18]
                                                L3_3 = L3_3.utf8p2
                                                L4_4 = L3_3
                                                L3_3 = L3_3.lower
                                                L3_3 = L3_3(L4_4)
                                                L0_0 = L3_3
                                              end
                                            else
                                              L3_3 = this_sigattrlog
                                              L3_3 = L3_3[19]
                                              L3_3 = L3_3.matched
                                              if L3_3 then
                                                L3_3 = this_sigattrlog
                                                L3_3 = L3_3[19]
                                                L3_3 = L3_3.utf8p2
                                                if L3_3 ~= nil then
                                                  L3_3 = this_sigattrlog
                                                  L3_3 = L3_3[19]
                                                  L3_3 = L3_3.utf8p2
                                                  L4_4 = L3_3
                                                  L3_3 = L3_3.lower
                                                  L3_3 = L3_3(L4_4)
                                                  L0_0 = L3_3
                                                end
                                              else
                                                L3_3 = this_sigattrlog
                                                L3_3 = L3_3[20]
                                                L3_3 = L3_3.matched
                                                if L3_3 then
                                                  L3_3 = this_sigattrlog
                                                  L3_3 = L3_3[20]
                                                  L3_3 = L3_3.utf8p2
                                                  if L3_3 ~= nil then
                                                    L3_3 = this_sigattrlog
                                                    L3_3 = L3_3[20]
                                                    L3_3 = L3_3.utf8p2
                                                    L4_4 = L3_3
                                                    L3_3 = L3_3.lower
                                                    L3_3 = L3_3(L4_4)
                                                    L0_0 = L3_3
                                                  end
                                                else
                                                  L3_3 = this_sigattrlog
                                                  L3_3 = L3_3[21]
                                                  L3_3 = L3_3.matched
                                                  if L3_3 then
                                                    L3_3 = this_sigattrlog
                                                    L3_3 = L3_3[21]
                                                    L3_3 = L3_3.utf8p2
                                                    if L3_3 ~= nil then
                                                      L3_3 = this_sigattrlog
                                                      L3_3 = L3_3[21]
                                                      L3_3 = L3_3.utf8p2
                                                      L4_4 = L3_3
                                                      L3_3 = L3_3.lower
                                                      L3_3 = L3_3(L4_4)
                                                      L0_0 = L3_3
                                                    end
                                                  else
                                                    L3_3 = this_sigattrlog
                                                    L3_3 = L3_3[22]
                                                    L3_3 = L3_3.matched
                                                    if L3_3 then
                                                      L3_3 = this_sigattrlog
                                                      L3_3 = L3_3[22]
                                                      L3_3 = L3_3.utf8p2
                                                      if L3_3 ~= nil then
                                                        L3_3 = this_sigattrlog
                                                        L3_3 = L3_3[22]
                                                        L3_3 = L3_3.utf8p2
                                                        L4_4 = L3_3
                                                        L3_3 = L3_3.lower
                                                        L3_3 = L3_3(L4_4)
                                                        L0_0 = L3_3
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
      end
    end
  end
end
if L0_0 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = 0
L4_4 = {
  L5_5,
  L6_6,
  L7_7,
  L8_8,
  L9_9,
  "avira",
  "mcafee",
  "webprotection",
  "isecespd",
  "macmnsvc",
  "masvc",
  "avscan",
  "rtvscand",
  "symcfgd",
  "scmdaemon",
  "symantec",
  "osquery",
  "sophos",
  "elastic-endpoint",
  "falcon",
  "nessusd",
  "cbagentd",
  "td-agent",
  "packetbeat",
  "filebeat",
  "auditbeat",
  "CynetEPS"
}
L8_8 = "opensnitch"
L9_9 = "avast"
L8_8 = 1
L9_9 = true
if L5_5 == nil then
  L8_8 = 1
  L9_9 = true
elseif L5_5 ~= nil then
  for L8_8, L9_9 in L5_5(L6_6) do
    if string.find(L0_0, L9_9, 1, true) ~= nil then
      L3_3 = L3_3 + 1
    end
  end
  if L3_3 > 2 then
    L8_8 = "SecuritySoftwareDiscovery_mt2023"
    L5_5(L6_6, L7_7, L8_8)
    return L5_5
  end
end
return L5_5
