local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L12_12 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L1_1())
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
                                  L3_3 = "\\azinfoprotection.exe"
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
L2_2, L3_3, L4_4 = nil, nil, nil
L5_5 = this_sigattrlog
L5_5 = L5_5[1]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[1]
  L5_5 = L5_5.utf8p1
  if L5_5 ~= nil then
    L5_5 = string
    L5_5 = L5_5.lower
    L6_6 = this_sigattrlog
    L6_6 = L6_6[1]
    L6_6 = L6_6.utf8p1
    L5_5 = L5_5(L6_6)
    L4_4 = L5_5
    L5_5 = string
    L5_5 = L5_5.match
    L6_6 = L4_4
    L6_6 = L5_5(L6_6, L7_7)
    L2_2 = L6_6
    _ = L5_5
  end
end
L5_5 = this_sigattrlog
L5_5 = L5_5[2]
L5_5 = L5_5.matched
if L5_5 then
  L5_5 = this_sigattrlog
  L5_5 = L5_5[2]
  L5_5 = L5_5.utf8p1
  if L5_5 ~= nil then
    L5_5 = string
    L5_5 = L5_5.lower
    L6_6 = this_sigattrlog
    L6_6 = L6_6[2]
    L6_6 = L6_6.utf8p1
    L5_5 = L5_5(L6_6)
    L6_6 = string
    L6_6 = L6_6.match
    L6_6 = L6_6(L7_7, L8_8)
    L3_3 = L7_7
    _ = L6_6
  end
end
if L2_2 ~= nil and L3_3 ~= nil and L2_2 == L3_3 then
  L1_1 = true
end
if L1_1 == true then
  L5_5 = bm
  L5_5 = L5_5.get_process_relationships
  L6_6 = L5_5()
  for L10_10, L11_11 in L7_7(L8_8) do
    L12_12 = mp
    L12_12 = L12_12.bitand
    L12_12 = L12_12(L11_11.reason_ex, bm.RELATIONSHIP_CREATED)
    if L12_12 == bm.RELATIONSHIP_CREATED and L4_4 == string.lower(MpCommon.PathToWin32Path(L11_11.image_path)) then
      TrackPidAndTechniqueBM(L11_11.ppid, "T1055.002", "processinjection_target_r")
      bm.request_SMS(L11_11.ppid, "M")
      bm.add_action("SmsAsyncScanEvent", 1000)
    end
    L12_12 = mp.bitand(L11_11.reason_ex, bm.RELATIONSHIP_INJECTION)
    if L12_12 == bm.RELATIONSHIP_INJECTION then
      TrackPidAndTechniqueBM(L11_11.ppid, "T1055.002", "processinjection_target_r")
      bm.request_SMS(L11_11.ppid, "M")
      bm.add_action("SmsAsyncScanEvent", 1000)
    end
  end
  return L7_7
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
