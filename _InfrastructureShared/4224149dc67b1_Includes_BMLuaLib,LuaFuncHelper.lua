local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = versioning
L0_0 = L0_0.GetTestMode
L0_0 = L0_0()
if L0_0 ~= 65000 then
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
L0_0, L1_1 = nil, nil
L2_2 = this_sigattrlog
L2_2 = L2_2[5]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[5]
  L0_0 = L2_2.utf8p1
  L1_1 = 3
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[6]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[6]
    L0_0 = L2_2.utf8p1
    L1_1 = 4
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[7]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[7]
      L0_0 = L2_2.utf8p1
      L1_1 = 7
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[8]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[8]
        L0_0 = L2_2.utf8p1
        L1_1 = 8
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[9]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[9]
          L0_0 = L2_2.utf8p1
          L1_1 = 9
        else
          L2_2 = this_sigattrlog
          L2_2 = L2_2[10]
          L2_2 = L2_2.matched
          if L2_2 then
            L2_2 = this_sigattrlog
            L2_2 = L2_2[10]
            L0_0 = L2_2.utf8p1
            L1_1 = 10
          else
            L2_2 = this_sigattrlog
            L2_2 = L2_2[11]
            L2_2 = L2_2.matched
            if L2_2 then
              L2_2 = this_sigattrlog
              L2_2 = L2_2[11]
              L0_0 = L2_2.utf8p1
              L1_1 = 11
            else
              L2_2 = this_sigattrlog
              L2_2 = L2_2[12]
              L2_2 = L2_2.matched
              if L2_2 then
                L2_2 = this_sigattrlog
                L2_2 = L2_2[12]
                L0_0 = L2_2.utf8p1
                L1_1 = 13
              else
                L2_2 = this_sigattrlog
                L2_2 = L2_2[13]
                L2_2 = L2_2.matched
                if L2_2 then
                  L2_2 = this_sigattrlog
                  L2_2 = L2_2[13]
                  L0_0 = L2_2.utf8p1
                  L1_1 = 14
                else
                  L2_2 = this_sigattrlog
                  L2_2 = L2_2[14]
                  L2_2 = L2_2.matched
                  if L2_2 then
                    L2_2 = this_sigattrlog
                    L2_2 = L2_2[14]
                    L0_0 = L2_2.utf8p1
                    L1_1 = 19
                  else
                    L2_2 = this_sigattrlog
                    L2_2 = L2_2[15]
                    L2_2 = L2_2.matched
                    if L2_2 then
                      L2_2 = this_sigattrlog
                      L2_2 = L2_2[15]
                      L0_0 = L2_2.utf8p1
                      L1_1 = 20
                    else
                      L2_2 = this_sigattrlog
                      L2_2 = L2_2[16]
                      L2_2 = L2_2.matched
                      if L2_2 then
                        L2_2 = this_sigattrlog
                        L2_2 = L2_2[16]
                        L0_0 = L2_2.utf8p1
                        L1_1 = 21
                      else
                        L2_2 = this_sigattrlog
                        L2_2 = L2_2[17]
                        L2_2 = L2_2.matched
                        if L2_2 then
                          L2_2 = this_sigattrlog
                          L2_2 = L2_2[17]
                          L0_0 = L2_2.utf8p1
                          L1_1 = 22
                        else
                          L2_2 = this_sigattrlog
                          L2_2 = L2_2[18]
                          L2_2 = L2_2.matched
                          if L2_2 then
                            L2_2 = this_sigattrlog
                            L2_2 = L2_2[18]
                            L0_0 = L2_2.utf8p1
                            L1_1 = 23
                          else
                            L2_2 = this_sigattrlog
                            L2_2 = L2_2[19]
                            L2_2 = L2_2.matched
                            if L2_2 then
                              L2_2 = this_sigattrlog
                              L2_2 = L2_2[19]
                              L0_0 = L2_2.utf8p1
                              L1_1 = 26
                            else
                              L2_2 = this_sigattrlog
                              L2_2 = L2_2[20]
                              L2_2 = L2_2.matched
                              if L2_2 then
                                L2_2 = this_sigattrlog
                                L2_2 = L2_2[20]
                                L0_0 = L2_2.utf8p1
                                L1_1 = 27
                              else
                                L2_2 = this_sigattrlog
                                L2_2 = L2_2[21]
                                L2_2 = L2_2.matched
                                if L2_2 then
                                  L2_2 = this_sigattrlog
                                  L2_2 = L2_2[21]
                                  L0_0 = L2_2.utf8p1
                                  L1_1 = 30
                                else
                                  L2_2 = this_sigattrlog
                                  L2_2 = L2_2[22]
                                  L2_2 = L2_2.matched
                                  if L2_2 then
                                    L2_2 = this_sigattrlog
                                    L2_2 = L2_2[22]
                                    L0_0 = L2_2.utf8p1
                                    L1_1 = 31
                                  else
                                    L2_2 = this_sigattrlog
                                    L2_2 = L2_2[23]
                                    L2_2 = L2_2.matched
                                    if L2_2 then
                                      L2_2 = this_sigattrlog
                                      L2_2 = L2_2[23]
                                      L0_0 = L2_2.utf8p1
                                      L1_1 = 32
                                    else
                                      L2_2 = this_sigattrlog
                                      L2_2 = L2_2[24]
                                      L2_2 = L2_2.matched
                                      if L2_2 then
                                        L2_2 = this_sigattrlog
                                        L2_2 = L2_2[24]
                                        L0_0 = L2_2.utf8p1
                                        L1_1 = 34
                                      else
                                        L2_2 = this_sigattrlog
                                        L2_2 = L2_2[25]
                                        L2_2 = L2_2.matched
                                        if L2_2 then
                                          L2_2 = this_sigattrlog
                                          L2_2 = L2_2[25]
                                          L0_0 = L2_2.utf8p1
                                          L1_1 = 38
                                        else
                                          L2_2 = this_sigattrlog
                                          L2_2 = L2_2[26]
                                          L2_2 = L2_2.matched
                                          if L2_2 then
                                            L2_2 = this_sigattrlog
                                            L2_2 = L2_2[26]
                                            L0_0 = L2_2.utf8p1
                                            L1_1 = 40
                                          else
                                            L2_2 = this_sigattrlog
                                            L2_2 = L2_2[27]
                                            L2_2 = L2_2.matched
                                            if L2_2 then
                                              L2_2 = this_sigattrlog
                                              L2_2 = L2_2[27]
                                              L0_0 = L2_2.utf8p1
                                              L1_1 = 56
                                            else
                                              L2_2 = this_sigattrlog
                                              L2_2 = L2_2[28]
                                              L2_2 = L2_2.matched
                                              if L2_2 then
                                                L2_2 = this_sigattrlog
                                                L2_2 = L2_2[28]
                                                L0_0 = L2_2.utf8p1
                                                L1_1 = 57
                                              else
                                                L2_2 = this_sigattrlog
                                                L2_2 = L2_2[29]
                                                L2_2 = L2_2.matched
                                                if L2_2 then
                                                  L2_2 = this_sigattrlog
                                                  L2_2 = L2_2[29]
                                                  L0_0 = L2_2.utf8p1
                                                  L1_1 = 58
                                                else
                                                  L2_2 = this_sigattrlog
                                                  L2_2 = L2_2[30]
                                                  L2_2 = L2_2.matched
                                                  if L2_2 then
                                                    L2_2 = this_sigattrlog
                                                    L2_2 = L2_2[30]
                                                    L0_0 = L2_2.utf8p1
                                                    L1_1 = 99
                                                  else
                                                    L2_2 = this_sigattrlog
                                                    L2_2 = L2_2[31]
                                                    L2_2 = L2_2.matched
                                                    if L2_2 then
                                                      L2_2 = this_sigattrlog
                                                      L2_2 = L2_2[31]
                                                      L0_0 = L2_2.utf8p1
                                                      L1_1 = 100
                                                    else
                                                      L2_2 = this_sigattrlog
                                                      L2_2 = L2_2[32]
                                                      L2_2 = L2_2.matched
                                                      if L2_2 then
                                                        L2_2 = this_sigattrlog
                                                        L2_2 = L2_2[32]
                                                        L0_0 = L2_2.utf8p1
                                                        L1_1 = 101
                                                      else
                                                        L2_2 = this_sigattrlog
                                                        L2_2 = L2_2[33]
                                                        L2_2 = L2_2.matched
                                                        if L2_2 then
                                                          L2_2 = this_sigattrlog
                                                          L2_2 = L2_2[33]
                                                          L0_0 = L2_2.utf8p1
                                                          L1_1 = 102
                                                        else
                                                          L2_2 = this_sigattrlog
                                                          L2_2 = L2_2[34]
                                                          L2_2 = L2_2.matched
                                                          if L2_2 then
                                                            L2_2 = this_sigattrlog
                                                            L2_2 = L2_2[34]
                                                            L0_0 = L2_2.utf8p1
                                                            L1_1 = 103
                                                          else
                                                            L2_2 = this_sigattrlog
                                                            L2_2 = L2_2[35]
                                                            L2_2 = L2_2.matched
                                                            if L2_2 then
                                                              L2_2 = this_sigattrlog
                                                              L2_2 = L2_2[35]
                                                              L0_0 = L2_2.utf8p1
                                                              L1_1 = 104
                                                            else
                                                              L2_2 = this_sigattrlog
                                                              L2_2 = L2_2[36]
                                                              L2_2 = L2_2.matched
                                                              if L2_2 then
                                                                L2_2 = this_sigattrlog
                                                                L2_2 = L2_2[36]
                                                                L0_0 = L2_2.utf8p1
                                                                L1_1 = 105
                                                              else
                                                                L2_2 = this_sigattrlog
                                                                L2_2 = L2_2[37]
                                                                L2_2 = L2_2.matched
                                                                if L2_2 then
                                                                  L2_2 = this_sigattrlog
                                                                  L2_2 = L2_2[37]
                                                                  L0_0 = L2_2.utf8p1
                                                                  L1_1 = 106
                                                                else
                                                                  L2_2 = this_sigattrlog
                                                                  L2_2 = L2_2[38]
                                                                  L2_2 = L2_2.matched
                                                                  if L2_2 then
                                                                    L2_2 = this_sigattrlog
                                                                    L2_2 = L2_2[38]
                                                                    L0_0 = L2_2.utf8p1
                                                                    L1_1 = 107
                                                                  else
                                                                    L2_2 = this_sigattrlog
                                                                    L2_2 = L2_2[39]
                                                                    L2_2 = L2_2.matched
                                                                    if L2_2 then
                                                                      L2_2 = this_sigattrlog
                                                                      L2_2 = L2_2[39]
                                                                      L0_0 = L2_2.utf8p1
                                                                      L1_1 = 108
                                                                    else
                                                                      L2_2 = this_sigattrlog
                                                                      L2_2 = L2_2[40]
                                                                      L2_2 = L2_2.matched
                                                                      if L2_2 then
                                                                        L2_2 = this_sigattrlog
                                                                        L2_2 = L2_2[40]
                                                                        L0_0 = L2_2.utf8p1
                                                                        L1_1 = 109
                                                                      else
                                                                        L2_2 = this_sigattrlog
                                                                        L2_2 = L2_2[41]
                                                                        L2_2 = L2_2.matched
                                                                        if L2_2 then
                                                                          L2_2 = this_sigattrlog
                                                                          L2_2 = L2_2[41]
                                                                          L0_0 = L2_2.utf8p1
                                                                          L1_1 = 253
                                                                        else
                                                                          L2_2 = this_sigattrlog
                                                                          L2_2 = L2_2[42]
                                                                          L2_2 = L2_2.matched
                                                                          if L2_2 then
                                                                            L2_2 = this_sigattrlog
                                                                            L2_2 = L2_2[42]
                                                                            L0_0 = L2_2.utf8p1
                                                                            L1_1 = 254
                                                                          else
                                                                            L2_2 = this_sigattrlog
                                                                            L2_2 = L2_2[43]
                                                                            L2_2 = L2_2.matched
                                                                            if L2_2 then
                                                                              L2_2 = this_sigattrlog
                                                                              L2_2 = L2_2[43]
                                                                              L0_0 = L2_2.utf8p1
                                                                              L1_1 = 259
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
    end
  end
end
L2_2 = lastIndexOf
L3_3 = L0_0
L4_4 = "."
L2_2 = L2_2(L3_3, L4_4, #L0_0 - 7)
L3_3 = string
L3_3 = L3_3.lower
L4_4 = string
L4_4 = L4_4.sub
L4_4 = L4_4(L0_0, L2_2 + 1)
L3_3 = L3_3(L4_4, L4_4(L0_0, L2_2 + 1))
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = L3_3
L4_4 = L4_4 .. "_" .. L1_1
L0_0 = string.lower(L0_0)
if not L0_0 then
  return mp.CLEAN
end
if mp.CheckUrl(L0_0) == 1 and mp.CheckUrl(L0_0) == 1 then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContextNoPath("deprecatedDnsRecordType", L4_4) then
  MpCommon.AppendPersistContextNoPath("deprecatedDnsRecordType", L4_4, 3600)
end
if 5 < MpCommon.GetPersistContextCountNoPath("deprecatedDnsRecordType") then
  return mp.INFECTED
end
return mp.CLEAN
