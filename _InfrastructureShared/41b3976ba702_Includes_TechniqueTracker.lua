local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L13_13 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L1_1())
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "\\windows\\explorer.exe"
L4_4 = 1
L5_5 = true
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if not L1_1 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "\\system32\\svchost.exe"
  L4_4 = 1
  L5_5 = true
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "\\syswow64\\svchost.exe"
    L4_4 = 1
    L5_5 = true
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L3_3 = "\\microsoft visual studio\\"
      L4_4 = 1
      L5_5 = true
      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L2_2 = L0_0
        L3_3 = "\\program files"
        L4_4 = 1
        L5_5 = true
        L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L2_2 = L0_0
          L3_3 = "\\adobe\\acrobat"
          L4_4 = 1
          L5_5 = true
          L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L2_2 = L0_0
            L3_3 = "chrome.exe"
            L4_4 = 1
            L5_5 = true
            L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
            if not L1_1 then
              L1_1 = string
              L1_1 = L1_1.find
              L2_2 = L0_0
              L3_3 = "teams.exe"
              L4_4 = 1
              L5_5 = true
              L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
              if not L1_1 then
                L1_1 = string
                L1_1 = L1_1.find
                L2_2 = L0_0
                L3_3 = "msedge.exe"
                L4_4 = 1
                L5_5 = true
                L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
                if not L1_1 then
                  L1_1 = string
                  L1_1 = L1_1.find
                  L2_2 = L0_0
                  L3_3 = "iexplore.exe"
                  L4_4 = 1
                  L5_5 = true
                  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
                  if not L1_1 then
                    L1_1 = string
                    L1_1 = L1_1.find
                    L2_2 = L0_0
                    L3_3 = "openwith.exe"
                    L4_4 = 1
                    L5_5 = true
                    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
                    if not L1_1 then
                      L1_1 = string
                      L1_1 = L1_1.find
                      L2_2 = L0_0
                      L3_3 = "\\modernwarfare.exe"
                      L4_4 = 1
                      L5_5 = true
                      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
                      if not L1_1 then
                        L1_1 = string
                        L1_1 = L1_1.find
                        L2_2 = L0_0
                        L3_3 = "\\league of legends.exe"
                        L4_4 = 1
                        L5_5 = true
                        L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
                        if not L1_1 then
                          L1_1 = string
                          L1_1 = L1_1.find
                          L2_2 = L0_0
                          L3_3 = "\\wowclassic.exe"
                          L4_4 = 1
                          L5_5 = true
                          L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
                          if not L1_1 then
                            L1_1 = string
                            L1_1 = L1_1.find
                            L2_2 = L0_0
                            L3_3 = "\\battle.net\\battle.net.exe"
                            L4_4 = 1
                            L5_5 = true
                            L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
                            if not L1_1 then
                              L1_1 = string
                              L1_1 = L1_1.find
                              L2_2 = L0_0
                              L3_3 = "\\grand theft auto v\\gta5.exe"
                              L4_4 = 1
                              L5_5 = true
                              L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
                              if not L1_1 then
                                L1_1 = string
                                L1_1 = L1_1.find
                                L2_2 = L0_0
                                L3_3 = "\\acrord32.exe"
                                L4_4 = 1
                                L5_5 = true
                                L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
                                if not L1_1 then
                                  L1_1 = string
                                  L1_1 = L1_1.find
                                  L2_2 = L0_0
                                  L3_3 = "\\firefox.exe"
                                  L4_4 = 1
                                  L5_5 = true
                                  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
                                  if not L1_1 then
                                    L1_1 = string
                                    L1_1 = L1_1.find
                                    L2_2 = L0_0
                                    L3_3 = "git.exe"
                                    L4_4 = 1
                                    L5_5 = true
                                    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
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
elseif L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = false
L2_2, L3_3, L4_4, L5_5 = nil, nil, nil, nil
L6_6 = this_sigattrlog
L6_6 = L6_6[1]
L6_6 = L6_6.matched
if L6_6 then
  L6_6 = this_sigattrlog
  L6_6 = L6_6[1]
  L6_6 = L6_6.utf8p1
  if L6_6 ~= nil then
    L6_6 = string
    L6_6 = L6_6.lower
    L7_7 = this_sigattrlog
    L7_7 = L7_7[1]
    L7_7 = L7_7.utf8p1
    L6_6 = L6_6(L7_7)
    L5_5 = L6_6
    L6_6 = string
    L6_6 = L6_6.match
    L7_7 = L5_5
    L7_7 = L6_6(L7_7, L8_8)
    L2_2 = L7_7
    _ = L6_6
  end
end
L6_6 = this_sigattrlog
L6_6 = L6_6[2]
L6_6 = L6_6.matched
if L6_6 then
  L6_6 = this_sigattrlog
  L6_6 = L6_6[2]
  L6_6 = L6_6.utf8p1
  if L6_6 ~= nil then
    L6_6 = string
    L6_6 = L6_6.lower
    L7_7 = this_sigattrlog
    L7_7 = L7_7[2]
    L7_7 = L7_7.utf8p1
    L6_6 = L6_6(L7_7)
    L7_7 = string
    L7_7 = L7_7.match
    L7_7 = L7_7(L8_8, L9_9)
    L3_3 = L8_8
    _ = L7_7
  end
end
if L2_2 ~= nil and L3_3 ~= nil and L2_2 == L3_3 then
  L1_1 = true
end
L6_6 = this_sigattrlog
L6_6 = L6_6[3]
L6_6 = L6_6.matched
if L6_6 then
  L6_6 = this_sigattrlog
  L6_6 = L6_6[3]
  L6_6 = L6_6.utf8p1
  if L6_6 ~= nil then
    L6_6 = string
    L6_6 = L6_6.lower
    L7_7 = this_sigattrlog
    L7_7 = L7_7[3]
    L7_7 = L7_7.utf8p1
    L6_6 = L6_6(L7_7)
    L7_7 = string
    L7_7 = L7_7.match
    L7_7 = L7_7(L8_8, L9_9)
    L4_4 = L8_8
    _ = L7_7
  end
end
if L2_2 ~= nil and L4_4 ~= nil and L2_2 == L4_4 then
  L1_1 = true
end
if L1_1 == true then
  L6_6 = bm
  L6_6 = L6_6.get_process_relationships
  L7_7 = L6_6()
  for L11_11, L12_12 in L8_8(L9_9) do
    L13_13 = mp
    L13_13 = L13_13.bitand
    L13_13 = L13_13(L12_12.reason_ex, bm.RELATIONSHIP_CREATED)
    if L13_13 == bm.RELATIONSHIP_CREATED and L5_5 == string.lower(MpCommon.PathToWin32Path(L12_12.image_path)) then
      TrackPidAndTechniqueBM(L12_12.ppid, "T1055.002", "processinjection_target_s")
      bm.request_SMS(L12_12.ppid, "M")
      bm.add_action("SmsAsyncScanEvent", 1000)
    end
    L13_13 = mp.bitand(L12_12.reason_ex, bm.RELATIONSHIP_INJECTION)
    if L13_13 == bm.RELATIONSHIP_INJECTION then
      TrackPidAndTechniqueBM(L12_12.ppid, "T1055.002", "processinjection_target_s")
      bm.request_SMS(L12_12.ppid, "M")
      bm.add_action("SmsAsyncScanEvent", 1000)
    end
  end
  L11_11 = "processinjection_source_s"
  L8_8(L9_9, L10_10, L11_11)
  return L8_8
end
L6_6 = mp
L6_6 = L6_6.CLEAN
return L6_6
