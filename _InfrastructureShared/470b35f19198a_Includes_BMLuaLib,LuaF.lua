local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = ""
L1_1 = 30
L2_2 = "DataStagerB"
L3_3 = {}
L4_4 = 3600
L5_5 = 100
L6_6 = "|"
L7_7 = this_sigattrlog
L7_7 = L7_7[6]
L7_7 = L7_7.matched
if L7_7 then
  L7_7 = this_sigattrlog
  L0_0 = L7_7[6]
else
  L7_7 = this_sigattrlog
  L7_7 = L7_7[7]
  L7_7 = L7_7.matched
  if L7_7 then
    L7_7 = this_sigattrlog
    L0_0 = L7_7[7]
  else
    L7_7 = this_sigattrlog
    L7_7 = L7_7[8]
    L7_7 = L7_7.matched
    if L7_7 then
      L7_7 = this_sigattrlog
      L0_0 = L7_7[8]
    else
      L7_7 = this_sigattrlog
      L7_7 = L7_7[9]
      L7_7 = L7_7.matched
      if L7_7 then
        L7_7 = this_sigattrlog
        L0_0 = L7_7[9]
      else
        L7_7 = this_sigattrlog
        L7_7 = L7_7[10]
        L7_7 = L7_7.matched
        if L7_7 then
          L7_7 = this_sigattrlog
          L0_0 = L7_7[10]
        else
          L7_7 = this_sigattrlog
          L7_7 = L7_7[11]
          L7_7 = L7_7.matched
          if L7_7 then
            L7_7 = this_sigattrlog
            L0_0 = L7_7[11]
          else
            L7_7 = this_sigattrlog
            L7_7 = L7_7[12]
            L7_7 = L7_7.matched
            if L7_7 then
              L7_7 = this_sigattrlog
              L0_0 = L7_7[12]
            else
              L7_7 = this_sigattrlog
              L7_7 = L7_7[13]
              L7_7 = L7_7.matched
              if L7_7 then
                L7_7 = this_sigattrlog
                L0_0 = L7_7[13]
              else
                L7_7 = this_sigattrlog
                L7_7 = L7_7[14]
                L7_7 = L7_7.matched
                if L7_7 then
                  L7_7 = this_sigattrlog
                  L0_0 = L7_7[14]
                else
                  L7_7 = this_sigattrlog
                  L7_7 = L7_7[15]
                  L7_7 = L7_7.matched
                  if L7_7 then
                    L7_7 = this_sigattrlog
                    L0_0 = L7_7[15]
                  else
                    L7_7 = this_sigattrlog
                    L7_7 = L7_7[16]
                    L7_7 = L7_7.matched
                    if L7_7 then
                      L7_7 = this_sigattrlog
                      L0_0 = L7_7[16]
                    else
                      L7_7 = this_sigattrlog
                      L7_7 = L7_7[17]
                      L7_7 = L7_7.matched
                      if L7_7 then
                        L7_7 = this_sigattrlog
                        L0_0 = L7_7[17]
                      else
                        L7_7 = this_sigattrlog
                        L7_7 = L7_7[18]
                        L7_7 = L7_7.matched
                        if L7_7 then
                          L7_7 = this_sigattrlog
                          L0_0 = L7_7[18]
                        else
                          L7_7 = this_sigattrlog
                          L7_7 = L7_7[19]
                          L7_7 = L7_7.matched
                          if L7_7 then
                            L7_7 = this_sigattrlog
                            L0_0 = L7_7[19]
                          else
                            L7_7 = this_sigattrlog
                            L7_7 = L7_7[20]
                            L7_7 = L7_7.matched
                            if L7_7 then
                              L7_7 = this_sigattrlog
                              L0_0 = L7_7[20]
                            else
                              L7_7 = this_sigattrlog
                              L7_7 = L7_7[21]
                              L7_7 = L7_7.matched
                              if L7_7 then
                                L7_7 = this_sigattrlog
                                L0_0 = L7_7[21]
                              else
                                L7_7 = this_sigattrlog
                                L7_7 = L7_7[22]
                                L7_7 = L7_7.matched
                                if L7_7 then
                                  L7_7 = this_sigattrlog
                                  L0_0 = L7_7[22]
                                else
                                  L7_7 = this_sigattrlog
                                  L7_7 = L7_7[23]
                                  L7_7 = L7_7.matched
                                  if L7_7 then
                                    L7_7 = this_sigattrlog
                                    L0_0 = L7_7[23]
                                  else
                                    L7_7 = this_sigattrlog
                                    L7_7 = L7_7[24]
                                    L7_7 = L7_7.matched
                                    if L7_7 then
                                      L7_7 = this_sigattrlog
                                      L0_0 = L7_7[24]
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
L7_7 = L0_0.utf8p1
L8_8 = StringStartsWith
L9_9 = L7_7
L10_10 = "%"
L8_8 = L8_8(L9_9, L10_10)
if L8_8 then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = bm
L8_8 = L8_8.get_current_process_startup_info
L8_8 = L8_8()
L9_9 = MpCommon
L9_9 = L9_9.PathToWin32Path
L10_10 = bm
L10_10 = L10_10.get_imagepath
L11_11 = L10_10()
L9_9 = L9_9(L10_10, L11_11, L10_10())
L10_10 = L8_8.ppid
L11_11 = L6_6
L10_10 = L10_10 .. L11_11 .. L9_9
L11_11 = GetRollingQueueKeyValues
L11_11 = L11_11(L2_2, L10_10)
if L11_11 then
  for _FORV_15_, _FORV_16_ in ipairs(L11_11) do
    if _FORV_16_ and _FORV_16_.value then
      if _FORV_16_.value == L7_7 then
        return mp.CLEAN
      end
      if string.match(_FORV_16_.value, "(%.[^%.]+)$") == string.match(L7_7, "(%.[^%.]+)$") and AddToAtomicCounter(L2_2, 1) > 4 then
        return mp.CLEAN
      end
    end
  end
  if L1_1 < #L11_11 then
    L3_3.DataStagerRQName = L11_11
    L3_3.DataStagerCount = GetRollingQueueCount(L2_2)
    bm.add_related_string("DataStagerInfo", MpCommon.JsonSerialize(L3_3), bm.RelatedStringBMReport)
    reportSessionInformation()
    reportTimingData()
    return mp.INFECTED
  end
end
AppendToRollingQueue(L2_2, L10_10, L7_7, L4_4, L5_5, 0)
return mp.CLEAN
