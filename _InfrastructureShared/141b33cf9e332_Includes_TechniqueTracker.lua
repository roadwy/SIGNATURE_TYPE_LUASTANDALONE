local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[3]
      L0_0 = L0_0.utf8p2
      if L0_0 ~= nil then
        L0_0 = string
        L0_0 = L0_0.lower
        L1_1 = bm
        L1_1 = L1_1.get_imagepath
        L4_4 = L1_1()
        L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1())
        L1_1 = string
        L1_1 = L1_1.find
        L2_2 = L0_0
        L3_3 = "\\program files"
        L4_4 = 1
        L1_1 = L1_1(L2_2, L3_3, L4_4, true)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L2_2 = L0_0
          L3_3 = "regsvr32.exe"
          L4_4 = 1
          L1_1 = L1_1(L2_2, L3_3, L4_4, true)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L2_2 = L0_0
            L3_3 = "svchost.exe"
            L4_4 = 1
            L1_1 = L1_1(L2_2, L3_3, L4_4, true)
            if not L1_1 then
              L1_1 = string
              L1_1 = L1_1.find
              L2_2 = L0_0
              L3_3 = "onedrive"
              L4_4 = 1
              L1_1 = L1_1(L2_2, L3_3, L4_4, true)
              if not L1_1 then
                L1_1 = string
                L1_1 = L1_1.find
                L2_2 = L0_0
                L3_3 = "\\google"
                L4_4 = 1
                L1_1 = L1_1(L2_2, L3_3, L4_4, true)
                if not L1_1 then
                  L1_1 = string
                  L1_1 = L1_1.find
                  L2_2 = L0_0
                  L3_3 = "msiexec.exe"
                  L4_4 = 1
                  L1_1 = L1_1(L2_2, L3_3, L4_4, true)
                  if not L1_1 then
                    L1_1 = string
                    L1_1 = L1_1.find
                    L2_2 = L0_0
                    L3_3 = "service.exe"
                    L4_4 = 1
                    L1_1 = L1_1(L2_2, L3_3, L4_4, true)
                    if not L1_1 then
                      L1_1 = string
                      L1_1 = L1_1.find
                      L2_2 = L0_0
                      L3_3 = "coresynccustomhook"
                      L4_4 = 1
                      L1_1 = L1_1(L2_2, L3_3, L4_4, true)
                      if not L1_1 then
                        L1_1 = string
                        L1_1 = L1_1.find
                        L2_2 = L0_0
                        L3_3 = "frxsvc"
                        L4_4 = 1
                        L1_1 = L1_1(L2_2, L3_3, L4_4, true)
                        if not L1_1 then
                          L1_1 = string
                          L1_1 = L1_1.find
                          L2_2 = L0_0
                          L3_3 = "integrator"
                          L4_4 = 1
                          L1_1 = L1_1(L2_2, L3_3, L4_4, true)
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
        L1_1 = string
        L1_1 = L1_1.lower
        L2_2 = this_sigattrlog
        L2_2 = L2_2[2]
        L2_2 = L2_2.utf8p1
        L1_1 = L1_1(L2_2)
        L2_2 = this_sigattrlog
        L2_2 = L2_2[2]
        L2_2 = L2_2.utf8p2
        L3_3 = string
        L3_3 = L3_3.lower
        L4_4 = this_sigattrlog
        L4_4 = L4_4[3]
        L4_4 = L4_4.utf8p2
        L3_3 = L3_3(L4_4)
        L4_4 = string
        L4_4 = L4_4.find
        L4_4 = L4_4(L1_1, L3_3, 1, true)
        if L4_4 then
          L4_4 = sysio
          L4_4 = L4_4.IsFileExists
          L4_4 = L4_4(L2_2)
          if L4_4 then
            L4_4 = string
            L4_4 = L4_4.lower
            L4_4 = L4_4(L2_2)
            if string.find(L4_4, "\\program files", 1, true) or string.find(L4_4, "\\windows\\", 1, true) then
              return mp.CLEAN
            end
            if mp.IsKnownFriendlyFile(L2_2, true, false) == false then
              bm.add_related_file(L2_2)
              TrackPidAndTechniqueBM("BM", "T1559.001", "interprocess_com_d")
              return mp.INFECTED
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
