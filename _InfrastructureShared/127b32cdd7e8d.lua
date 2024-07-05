local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[5]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = string
        L0_0 = L0_0.lower
        L1_1 = this_sigattrlog
        L1_1 = L1_1[1]
        L1_1 = L1_1.utf8p1
        L0_0 = L0_0(L1_1)
        L1_1 = string
        L1_1 = L1_1.match
        L2_2 = string
        L2_2 = L2_2.lower
        L2_2 = L2_2(L3_3)
        L1_1 = L1_1(L2_2, L3_3)
        if L0_0 ~= L1_1 then
          L2_2 = mp
          L2_2 = L2_2.CLEAN
          return L2_2
        end
        L2_2 = string
        L2_2 = L2_2.lower
        L2_2 = L2_2(L3_3)
        if L2_2 ~= nil then
        else
          if L3_3 <= 1 then
            return L3_3
        end
        else
          L6_6 = 1
          L7_7 = true
          if not L3_3 then
            L6_6 = 1
            L7_7 = true
            if not L3_3 then
              L6_6 = 1
              L7_7 = true
              if not L3_3 then
                L6_6 = 1
                L7_7 = true
                if not L3_3 then
                  L6_6 = 1
                  L7_7 = true
                  if not L3_3 then
                    L6_6 = 1
                    L7_7 = true
                    if not L3_3 then
                      L6_6 = 1
                      L7_7 = true
                      if not L3_3 then
                        L6_6 = 1
                        L7_7 = true
                        if not L3_3 then
                          L6_6 = 1
                          L7_7 = true
                          if not L3_3 then
                            L6_6 = 1
                            L7_7 = true
                            if not L3_3 then
                              L6_6 = 1
                              L7_7 = true
                              if not L3_3 then
                                L6_6 = 1
                                L7_7 = true
                                if not L3_3 then
                                  L6_6 = 1
                                  L7_7 = true
                                  if not L3_3 then
                                    L6_6 = 1
                                    L7_7 = true
                                    if not L3_3 then
                                      L6_6 = 1
                                      L7_7 = true
                                      if not L3_3 then
                                        L6_6 = 1
                                        L7_7 = true
                                        if not L3_3 then
                                          L6_6 = 1
                                          L7_7 = true
                                          if not L3_3 then
                                            L6_6 = 1
                                            L7_7 = true
                                            if not L3_3 then
                                              L6_6 = 1
                                              L7_7 = true
                                              if not L3_3 then
                                                L6_6 = 1
                                                L7_7 = true
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
          elseif L3_3 then
            return L3_3
          end
        end
        for L6_6 = 1, L4_4.SIGATTR_LOG_SZ do
          L7_7 = sigattr_head
          L7_7 = L7_7[L6_6]
          L7_7 = L7_7.matched
          if L7_7 then
            L7_7 = sigattr_head
            L7_7 = L7_7[L6_6]
            L7_7 = L7_7.attribute
            if L7_7 == 16400 then
              L7_7 = string
              L7_7 = L7_7.match
              L8_8 = string
              L8_8 = L8_8.lower
              L8_8 = L8_8(L9_9)
              L7_7 = L7_7(L8_8, L9_9)
              L8_8 = string
              L8_8 = L8_8.find
              L12_12 = true
              L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12)
              if L8_8 then
                L8_8 = mp
                L8_8 = L8_8.GetExecutablesFromCommandLine
                L8_8 = L8_8(L9_9)
                for L12_12, L13_13 in L9_9(L10_10) do
                  L13_13 = mp.ContextualExpandEnvironmentVariables(L13_13)
                  if sysio.IsFileExists(L13_13) then
                    mp.ReportLowfi(L13_13, 2253321900)
                    bm.add_related_file(L13_13)
                  end
                end
                return L9_9
              end
            end
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
