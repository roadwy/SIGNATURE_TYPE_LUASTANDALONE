local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19
L0_0 = versioning
L0_0 = L0_0.GetTestMode
L0_0 = L0_0()
if L0_0 ~= 65000 then
  L0_0 = versioning
  L0_0 = L0_0.GetCloudBlockLevel
  L0_0 = L0_0()
  if L0_0 < 4 then
    L0_0 = MpCommon
    L0_0 = L0_0.IsSampled
    L1_1 = 1000
    L2_2 = true
    L3_3 = true
    L4_4 = true
    L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4)
    if L0_0 == false then
      L0_0 = mp
      L0_0 = L0_0.CLEAN
      return L0_0
    end
  end
end
L0_0, L1_1 = nil, nil
L2_2 = this_sigattrlog
L2_2 = L2_2[5]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[5]
  L0_0 = L2_2.utf8p1
  L1_1 = 2
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[6]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[6]
    L0_0 = L2_2.utf8p1
    L1_1 = 6
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[7]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[7]
      L0_0 = L2_2.utf8p1
      L1_1 = 17
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[8]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[8]
        L0_0 = L2_2.utf8p1
        L1_1 = 18
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[9]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[9]
          L0_0 = L2_2.utf8p1
          L1_1 = 24
        else
          L2_2 = this_sigattrlog
          L2_2 = L2_2[10]
          L2_2 = L2_2.matched
          if L2_2 then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[10]
            L0_0 = L2_2.utf8p1
            L1_1 = 25
          else
            L2_2 = this_sigattrlog
            L2_2 = L2_2[11]
            L2_2 = L2_2.matched
            if L2_2 then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[11]
              L0_0 = L2_2.utf8p1
              L1_1 = 28
            else
              L2_2 = this_sigattrlog
              L2_2 = L2_2[12]
              L2_2 = L2_2.matched
              if L2_2 then
                L2_2 = this_sigattrlog
                L2_2 = L2_2[12]
                L0_0 = L2_2.utf8p1
                L1_1 = 29
              else
                L2_2 = this_sigattrlog
                L2_2 = L2_2[13]
                L2_2 = L2_2.matched
                if L2_2 then
                  L2_2 = this_sigattrlog
                  L2_2 = L2_2[13]
                  L0_0 = L2_2.utf8p1
                  L1_1 = 33
                else
                  L2_2 = this_sigattrlog
                  L2_2 = L2_2[14]
                  L2_2 = L2_2.matched
                  if L2_2 then
                    L2_2 = this_sigattrlog
                    L2_2 = L2_2[14]
                    L0_0 = L2_2.utf8p1
                    L1_1 = 35
                  else
                    L2_2 = this_sigattrlog
                    L2_2 = L2_2[15]
                    L2_2 = L2_2.matched
                    if L2_2 then
                      L2_2 = this_sigattrlog
                      L2_2 = L2_2[15]
                      L0_0 = L2_2.utf8p1
                      L1_1 = 36
                    else
                      L2_2 = this_sigattrlog
                      L2_2 = L2_2[16]
                      L2_2 = L2_2.matched
                      if L2_2 then
                        L2_2 = this_sigattrlog
                        L2_2 = L2_2[16]
                        L0_0 = L2_2.utf8p1
                        L1_1 = 37
                      else
                        L2_2 = this_sigattrlog
                        L2_2 = L2_2[17]
                        L2_2 = L2_2.matched
                        if L2_2 then
                          L2_2 = this_sigattrlog
                          L2_2 = L2_2[17]
                          L0_0 = L2_2.utf8p1
                          L1_1 = 42
                        else
                          L2_2 = this_sigattrlog
                          L2_2 = L2_2[18]
                          L2_2 = L2_2.matched
                          if L2_2 then
                            L2_2 = this_sigattrlog
                            L2_2 = L2_2[18]
                            L0_0 = L2_2.utf8p1
                            L1_1 = 43
                          else
                            L2_2 = this_sigattrlog
                            L2_2 = L2_2[19]
                            L2_2 = L2_2.matched
                            if L2_2 then
                              L2_2 = this_sigattrlog
                              L2_2 = L2_2[19]
                              L0_0 = L2_2.utf8p1
                              L1_1 = 44
                            else
                              L2_2 = this_sigattrlog
                              L2_2 = L2_2[20]
                              L2_2 = L2_2.matched
                              if L2_2 then
                                L2_2 = this_sigattrlog
                                L2_2 = L2_2[20]
                                L0_0 = L2_2.utf8p1
                                L1_1 = 45
                              else
                                L2_2 = this_sigattrlog
                                L2_2 = L2_2[21]
                                L2_2 = L2_2.matched
                                if L2_2 then
                                  L2_2 = this_sigattrlog
                                  L2_2 = L2_2[21]
                                  L0_0 = L2_2.utf8p1
                                  L1_1 = 46
                                else
                                  L2_2 = this_sigattrlog
                                  L2_2 = L2_2[23]
                                  L2_2 = L2_2.matched
                                  if L2_2 then
                                    L2_2 = this_sigattrlog
                                    L2_2 = L2_2[23]
                                    L0_0 = L2_2.utf8p1
                                    L1_1 = 48
                                  else
                                    L2_2 = this_sigattrlog
                                    L2_2 = L2_2[22]
                                    L2_2 = L2_2.matched
                                    if L2_2 then
                                      L2_2 = this_sigattrlog
                                      L2_2 = L2_2[22]
                                      L0_0 = L2_2.utf8p1
                                      L1_1 = 47
                                    else
                                      L2_2 = this_sigattrlog
                                      L2_2 = L2_2[24]
                                      L2_2 = L2_2.matched
                                      if L2_2 then
                                        L2_2 = this_sigattrlog
                                        L2_2 = L2_2[24]
                                        L0_0 = L2_2.utf8p1
                                        L1_1 = 49
                                      else
                                        L2_2 = this_sigattrlog
                                        L2_2 = L2_2[25]
                                        L2_2 = L2_2.matched
                                        if L2_2 then
                                          L2_2 = this_sigattrlog
                                          L2_2 = L2_2[25]
                                          L0_0 = L2_2.utf8p1
                                          L1_1 = 50
                                        else
                                          L2_2 = this_sigattrlog
                                          L2_2 = L2_2[26]
                                          L2_2 = L2_2.matched
                                          if L2_2 then
                                            L2_2 = this_sigattrlog
                                            L2_2 = L2_2[26]
                                            L0_0 = L2_2.utf8p1
                                            L1_1 = 51
                                          else
                                            L2_2 = this_sigattrlog
                                            L2_2 = L2_2[27]
                                            L2_2 = L2_2.matched
                                            if L2_2 then
                                              L2_2 = this_sigattrlog
                                              L2_2 = L2_2[27]
                                              L0_0 = L2_2.utf8p1
                                              L1_1 = 52
                                            else
                                              L2_2 = this_sigattrlog
                                              L2_2 = L2_2[28]
                                              L2_2 = L2_2.matched
                                              if L2_2 then
                                                L2_2 = this_sigattrlog
                                                L2_2 = L2_2[28]
                                                L0_0 = L2_2.utf8p1
                                                L1_1 = 53
                                              else
                                                L2_2 = this_sigattrlog
                                                L2_2 = L2_2[29]
                                                L2_2 = L2_2.matched
                                                if L2_2 then
                                                  L2_2 = this_sigattrlog
                                                  L2_2 = L2_2[29]
                                                  L0_0 = L2_2.utf8p1
                                                  L1_1 = 55
                                                else
                                                  L2_2 = this_sigattrlog
                                                  L2_2 = L2_2[30]
                                                  L2_2 = L2_2.matched
                                                  if L2_2 then
                                                    L2_2 = this_sigattrlog
                                                    L2_2 = L2_2[30]
                                                    L0_0 = L2_2.utf8p1
                                                    L1_1 = 59
                                                  else
                                                    L2_2 = this_sigattrlog
                                                    L2_2 = L2_2[31]
                                                    L2_2 = L2_2.matched
                                                    if L2_2 then
                                                      L2_2 = this_sigattrlog
                                                      L2_2 = L2_2[31]
                                                      L0_0 = L2_2.utf8p1
                                                      L1_1 = 60
                                                    else
                                                      L2_2 = this_sigattrlog
                                                      L2_2 = L2_2[32]
                                                      L2_2 = L2_2.matched
                                                      if L2_2 then
                                                        L2_2 = this_sigattrlog
                                                        L2_2 = L2_2[32]
                                                        L0_0 = L2_2.utf8p1
                                                        L1_1 = 61
                                                      else
                                                        L2_2 = this_sigattrlog
                                                        L2_2 = L2_2[33]
                                                        L2_2 = L2_2.matched
                                                        if L2_2 then
                                                          L2_2 = this_sigattrlog
                                                          L2_2 = L2_2[33]
                                                          L0_0 = L2_2.utf8p1
                                                          L1_1 = 62
                                                        else
                                                          L2_2 = this_sigattrlog
                                                          L2_2 = L2_2[34]
                                                          L2_2 = L2_2.matched
                                                          if L2_2 then
                                                            L2_2 = this_sigattrlog
                                                            L2_2 = L2_2[34]
                                                            L0_0 = L2_2.utf8p1
                                                            L1_1 = 63
                                                          else
                                                            L2_2 = this_sigattrlog
                                                            L2_2 = L2_2[35]
                                                            L2_2 = L2_2.matched
                                                            if L2_2 then
                                                              L2_2 = this_sigattrlog
                                                              L2_2 = L2_2[35]
                                                              L0_0 = L2_2.utf8p1
                                                              L1_1 = 249
                                                            else
                                                              L2_2 = this_sigattrlog
                                                              L2_2 = L2_2[36]
                                                              L2_2 = L2_2.matched
                                                              if L2_2 then
                                                                L2_2 = this_sigattrlog
                                                                L2_2 = L2_2[36]
                                                                L0_0 = L2_2.utf8p1
                                                                L1_1 = 250
                                                              else
                                                                L2_2 = this_sigattrlog
                                                                L2_2 = L2_2[37]
                                                                L2_2 = L2_2.matched
                                                                if L2_2 then
                                                                  L2_2 = this_sigattrlog
                                                                  L2_2 = L2_2[37]
                                                                  L0_0 = L2_2.utf8p1
                                                                  L1_1 = 251
                                                                else
                                                                  L2_2 = this_sigattrlog
                                                                  L2_2 = L2_2[38]
                                                                  L2_2 = L2_2.matched
                                                                  if L2_2 then
                                                                    L2_2 = this_sigattrlog
                                                                    L2_2 = L2_2[38]
                                                                    L0_0 = L2_2.utf8p1
                                                                    L1_1 = 252
                                                                  else
                                                                    L2_2 = this_sigattrlog
                                                                    L2_2 = L2_2[39]
                                                                    L2_2 = L2_2.matched
                                                                    if L2_2 then
                                                                      L2_2 = this_sigattrlog
                                                                      L2_2 = L2_2[39]
                                                                      L0_0 = L2_2.utf8p1
                                                                      L1_1 = 255
                                                                    else
                                                                      L2_2 = this_sigattrlog
                                                                      L2_2 = L2_2[40]
                                                                      L2_2 = L2_2.matched
                                                                      if L2_2 then
                                                                        L2_2 = this_sigattrlog
                                                                        L2_2 = L2_2[40]
                                                                        L0_0 = L2_2.utf8p1
                                                                        L1_1 = 257
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
L3_3 = L0_0
L2_2 = L0_0.match
L4_4 = "[%w%-%.]*%.[%w%-]+%.[%w]+"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = lastIndexOf
L3_3 = L0_0
L4_4 = "."
L5_5 = #L0_0
L5_5 = L5_5 - 7
L2_2 = L2_2(L3_3, L4_4, L5_5)
L3_3 = string
L3_3 = L3_3.lower
L4_4 = string
L4_4 = L4_4.sub
L5_5 = L0_0
L6_6 = L2_2 + 1
L19_19 = L4_4(L5_5, L6_6)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L4_4(L5_5, L6_6))
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = L3_3
L5_5 = "_"
L6_6 = L1_1
L4_4 = L4_4 .. L5_5 .. L6_6
L5_5 = "NRI-DNS-EXF-NONA"
L6_6 = string
L6_6 = L6_6.format
L7_7 = "%s_%s_%s"
L8_8 = L5_5
L9_9 = L3_3
L10_10 = L1_1
L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
L7_7 = MpCommon
L7_7 = L7_7.GetPersistContextCountNoPath
L8_8 = L6_6
L7_7 = L7_7(L8_8)
if L7_7 and L7_7 > 0 then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = this_sigattrlog
L8_8 = L8_8[3]
L8_8 = L8_8.np1
if not L8_8 then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = mp
L9_9 = L9_9.bitand
L10_10 = L8_8
L11_11 = 65535
L9_9 = L9_9(L10_10, L11_11)
L8_8 = L9_9
L9_9 = mp
L9_9 = L9_9.CheckUrl
L10_10 = L3_3
L10_10 = L9_9(L10_10)
if L9_9 == 1 and L10_10 == 1 then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = string
L11_11 = L11_11.sub
L12_12 = L0_0
L13_13 = 1
L14_14 = L2_2 - 1
L11_11 = L11_11(L12_12, L13_13, L14_14)
L12_12 = versioning
L12_12 = L12_12.GetTestMode
L12_12 = L12_12()
if L12_12 ~= 65000 then
  L12_12 = computeStringScores
  L13_13 = L11_11
  L15_15 = L12_12(L13_13)
  if (not (L13_13 > 0) or not (L12_12 > 1)) and not (L15_15 > 3) and not (L14_14 > 5) then
    L16_16 = mp
    L16_16 = L16_16.CLEAN
    return L16_16
  end
end
L12_12 = MpCommon
L12_12 = L12_12.GetPersistContextCountNoPath
L13_13 = L4_4
L12_12 = L12_12(L13_13)
if L12_12 < 20 then
  L13_13 = MpCommon
  L13_13 = L13_13.QueryPersistContextNoPath
  L14_14 = L4_4
  L15_15 = L11_11
  L13_13 = L13_13(L14_14, L15_15)
  if not L13_13 then
    L14_14 = computeReponseLength
    L15_15 = L8_8
    L14_14 = L14_14(L15_15)
    L15_15 = MpCommon
    L15_15 = L15_15.AppendPersistContextNoPath
    L16_16 = L4_4
    L17_17 = L11_11
    L18_18 = 3600
    L15_15(L16_16, L17_17, L18_18)
    L15_15 = MpCommon
    L15_15 = L15_15.AppendPersistContextNoPath
    L16_16 = L4_4
    L17_17 = "T"
    L16_16 = L16_16 .. L17_17
    L17_17 = MpCommon
    L17_17 = L17_17.GetCurrentTimeT
    L17_17 = L17_17()
    L18_18 = "_"
    L19_19 = #L11_11
    L17_17 = L17_17 .. L18_18 .. L19_19 .. "_" .. L14_14
    L18_18 = 3600
    L15_15(L16_16, L17_17, L18_18)
    L12_12 = L12_12 + 1
  end
end
if L12_12 == 20 then
  L13_13 = MpCommon
  L13_13 = L13_13.GetPersistContextNoPath
  L14_14 = L4_4
  L13_13 = L13_13(L14_14)
  L14_14 = extractCommonSuffix
  L15_15 = L13_13
  L16_16 = 0
  L15_15 = L14_14(L15_15, L16_16)
  L16_16 = computeDataLength
  L17_17 = L13_13
  L18_18 = #L15_15
  L16_16 = L16_16(L17_17, L18_18)
  L17_17 = #L15_15
  L17_17 = L17_17 + L16_16
  if L17_17 < 40 or L16_16 < 20 then
    L18_18 = mp
    L18_18 = L18_18.changedetectionname
    L19_19 = 805306724
    L18_18(L19_19)
  else
    L18_18 = this_sigattrlog
    L18_18 = L18_18[2]
    L18_18 = L18_18.utf8p1
    L19_19 = routeBasedOnProcess
    L19_19 = L19_19(L18_18, 1)
    mp.changedetectionname(L19_19)
  end
  L18_18 = MpCommon
  L18_18 = L18_18.QueryPersistContextNoPath
  L19_19 = L5_5
  L18_18 = L18_18(L19_19, L4_4)
  if not L18_18 then
    L18_18 = MpCommon
    L18_18 = L18_18.AppendPersistContextNoPath
    L19_19 = L5_5
    L18_18(L19_19, L4_4, 60)
  end
  L18_18 = mp
  L18_18 = L18_18.INFECTED
  return L18_18
end
L13_13 = mp
L13_13 = L13_13.CLEAN
return L13_13
