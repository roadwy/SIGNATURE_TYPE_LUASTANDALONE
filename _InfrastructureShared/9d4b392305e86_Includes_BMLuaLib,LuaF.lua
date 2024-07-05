local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = ""
L1_1 = 30
L2_2 = "DataStager"
L3_3 = {}
L4_4 = 3600
L5_5 = 100
L6_6 = "|"
L7_7 = this_sigattrlog
L7_7 = L7_7[30]
L7_7 = L7_7.matched
if L7_7 then
  L7_7 = this_sigattrlog
  L0_0 = L7_7[30]
else
  L7_7 = this_sigattrlog
  L7_7 = L7_7[31]
  L7_7 = L7_7.matched
  if L7_7 then
    L7_7 = this_sigattrlog
    L0_0 = L7_7[31]
  else
    L7_7 = this_sigattrlog
    L7_7 = L7_7[32]
    L7_7 = L7_7.matched
    if L7_7 then
      L7_7 = this_sigattrlog
      L0_0 = L7_7[32]
    else
      L7_7 = this_sigattrlog
      L7_7 = L7_7[33]
      L7_7 = L7_7.matched
      if L7_7 then
        L7_7 = this_sigattrlog
        L0_0 = L7_7[33]
      else
        L7_7 = this_sigattrlog
        L7_7 = L7_7[34]
        L7_7 = L7_7.matched
        if L7_7 then
          L7_7 = this_sigattrlog
          L0_0 = L7_7[34]
        else
          L7_7 = this_sigattrlog
          L7_7 = L7_7[35]
          L7_7 = L7_7.matched
          if L7_7 then
            L7_7 = this_sigattrlog
            L0_0 = L7_7[35]
          else
            L7_7 = this_sigattrlog
            L7_7 = L7_7[36]
            L7_7 = L7_7.matched
            if L7_7 then
              L7_7 = this_sigattrlog
              L0_0 = L7_7[36]
            else
              L7_7 = this_sigattrlog
              L7_7 = L7_7[37]
              L7_7 = L7_7.matched
              if L7_7 then
                L7_7 = this_sigattrlog
                L0_0 = L7_7[37]
              else
                L7_7 = this_sigattrlog
                L7_7 = L7_7[38]
                L7_7 = L7_7.matched
                if L7_7 then
                  L7_7 = this_sigattrlog
                  L0_0 = L7_7[38]
                else
                  L7_7 = this_sigattrlog
                  L7_7 = L7_7[39]
                  L7_7 = L7_7.matched
                  if L7_7 then
                    L7_7 = this_sigattrlog
                    L0_0 = L7_7[39]
                  else
                    L7_7 = this_sigattrlog
                    L7_7 = L7_7[40]
                    L7_7 = L7_7.matched
                    if L7_7 then
                      L7_7 = this_sigattrlog
                      L0_0 = L7_7[40]
                    else
                      L7_7 = this_sigattrlog
                      L7_7 = L7_7[41]
                      L7_7 = L7_7.matched
                      if L7_7 then
                        L7_7 = this_sigattrlog
                        L0_0 = L7_7[41]
                      else
                        L7_7 = this_sigattrlog
                        L7_7 = L7_7[42]
                        L7_7 = L7_7.matched
                        if L7_7 then
                          L7_7 = this_sigattrlog
                          L0_0 = L7_7[42]
                        else
                          L7_7 = this_sigattrlog
                          L7_7 = L7_7[43]
                          L7_7 = L7_7.matched
                          if L7_7 then
                            L7_7 = this_sigattrlog
                            L0_0 = L7_7[43]
                          else
                            L7_7 = this_sigattrlog
                            L7_7 = L7_7[44]
                            L7_7 = L7_7.matched
                            if L7_7 then
                              L7_7 = this_sigattrlog
                              L0_0 = L7_7[44]
                            else
                              L7_7 = this_sigattrlog
                              L7_7 = L7_7[45]
                              L7_7 = L7_7.matched
                              if L7_7 then
                                L7_7 = this_sigattrlog
                                L0_0 = L7_7[45]
                              else
                                L7_7 = this_sigattrlog
                                L7_7 = L7_7[46]
                                L7_7 = L7_7.matched
                                if L7_7 then
                                  L7_7 = this_sigattrlog
                                  L0_0 = L7_7[46]
                                else
                                  L7_7 = this_sigattrlog
                                  L7_7 = L7_7[47]
                                  L7_7 = L7_7.matched
                                  if L7_7 then
                                    L7_7 = this_sigattrlog
                                    L0_0 = L7_7[47]
                                  else
                                    L7_7 = this_sigattrlog
                                    L7_7 = L7_7[48]
                                    L7_7 = L7_7.matched
                                    if L7_7 then
                                      L7_7 = this_sigattrlog
                                      L0_0 = L7_7[48]
                                    else
                                      L7_7 = mp
                                      L7_7 = L7_7.CLEAN
                                      return L7_7
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
function L7_7(A0_14)
  return A0_14:match("(.*[/\\])")
end
L8_8 = L0_0.utf8p1
L9_9 = L0_0.utf8p2
L10_10 = L7_7
L11_11 = L8_8
L10_10 = L10_10(L11_11)
L11_11 = L7_7
L12_12 = L9_9
L11_11 = L11_11(L12_12)
if L10_10 == L11_11 then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
L10_10 = bm
L10_10 = L10_10.get_current_process_startup_info
L10_10 = L10_10()
L11_11 = MpCommon
L11_11 = L11_11.PathToWin32Path
L12_12 = bm
L12_12 = L12_12.get_imagepath
L13_13 = L12_12()
L11_11 = L11_11(L12_12, L13_13, L12_12())
L12_12 = L10_10.ppid
L13_13 = L6_6
L12_12 = L12_12 .. L13_13 .. L11_11 .. L6_6 .. L7_7(L9_9)
L13_13 = GetRollingQueueKeyValues
L13_13 = L13_13(L2_2, L12_12)
if L13_13 then
  for _FORV_17_, _FORV_18_ in ipairs(L13_13) do
    if _FORV_18_ and _FORV_18_.value == L9_9 then
      return mp.CLEAN
    end
  end
  if L1_1 < #L13_13 then
    L3_3.DataStagerRQName = GetRollingQueueKeys(L2_2)
    L3_3.DataStagerCount = GetRollingQueueCount(L2_2)
    L3_3 = MpCommon.JsonSerialize(L3_3)
    bm.add_related_string("DataStagerInfo", L3_3, bm.RelatedStringBMReport)
    reportSessionInformation()
    reportTimingData()
    return mp.INFECTED
  end
end
AppendToRollingQueue(L2_2, L12_12, L9_9, L4_4, L5_5, 0)
return mp.CLEAN
