local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L1_1 = L1_1(L2_2, "\\windows\\explorer.exe", 1, true)
if not L1_1 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, "\\system32\\svchost.exe", 1, true)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, "\\syswow64\\svchost.exe", 1, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L1_1 = L1_1(L2_2, "\\program files", 1, true)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L2_2 = L0_0
        L1_1 = L1_1(L2_2, "\\adobe\\acrobat", 1, true)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L2_2 = L0_0
          L1_1 = L1_1(L2_2, "chrome.exe", 1, true)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L2_2 = L0_0
            L1_1 = L1_1(L2_2, "teams.exe", 1, true)
            if not L1_1 then
              L1_1 = string
              L1_1 = L1_1.find
              L2_2 = L0_0
              L1_1 = L1_1(L2_2, "msedge.exe", 1, true)
              if not L1_1 then
                L1_1 = string
                L1_1 = L1_1.find
                L2_2 = L0_0
                L1_1 = L1_1(L2_2, "iexplore.exe", 1, true)
                if not L1_1 then
                  L1_1 = string
                  L1_1 = L1_1.find
                  L2_2 = L0_0
                  L1_1 = L1_1(L2_2, "openwith.exe", 1, true)
                  if not L1_1 then
                    L1_1 = string
                    L1_1 = L1_1.find
                    L2_2 = L0_0
                    L1_1 = L1_1(L2_2, "\\modernwarfare.exe", 1, true)
                    if not L1_1 then
                      L1_1 = string
                      L1_1 = L1_1.find
                      L2_2 = L0_0
                      L1_1 = L1_1(L2_2, "\\league of legends.exe", 1, true)
                      if not L1_1 then
                        L1_1 = string
                        L1_1 = L1_1.find
                        L2_2 = L0_0
                        L1_1 = L1_1(L2_2, "\\wowclassic.exe", 1, true)
                        if not L1_1 then
                          L1_1 = string
                          L1_1 = L1_1.find
                          L2_2 = L0_0
                          L1_1 = L1_1(L2_2, "\\battle.net\\battle.net.exe", 1, true)
                          if not L1_1 then
                            L1_1 = string
                            L1_1 = L1_1.find
                            L2_2 = L0_0
                            L1_1 = L1_1(L2_2, "\\grand theft auto v\\gta5.exe", 1, true)
                            if not L1_1 then
                              L1_1 = string
                              L1_1 = L1_1.find
                              L2_2 = L0_0
                              L1_1 = L1_1(L2_2, "\\acrord32.exe", 1, true)
                              if not L1_1 then
                                L1_1 = string
                                L1_1 = L1_1.find
                                L2_2 = L0_0
                                L1_1 = L1_1(L2_2, "\\firefox.exe", 1, true)
                                if not L1_1 then
                                  L1_1 = string
                                  L1_1 = L1_1.find
                                  L2_2 = L0_0
                                  L1_1 = L1_1(L2_2, "\\azinfoprotection.exe", 1, true)
                                  if not L1_1 then
                                    L1_1 = string
                                    L1_1 = L1_1.find
                                    L2_2 = L0_0
                                    L1_1 = L1_1(L2_2, "git.exe", 1, true)
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
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
  if mp.bitand(_FORV_7_.reason_ex, bm.RELATIONSHIP_INJECTION) == bm.RELATIONSHIP_INJECTION then
    TrackPidAndTechniqueBM(_FORV_7_.ppid, "T1055.002", "processinjection_target_m")
    bm.request_SMS(_FORV_7_.ppid, "M")
    bm.add_action("SmsAsyncScanEvent", 1000)
  end
end
return mp.INFECTED
