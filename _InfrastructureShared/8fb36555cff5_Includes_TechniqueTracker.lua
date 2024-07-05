local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = MpCommon
    L1_1 = L1_1.PathToWin32Path
    L2_2 = bm
    L2_2 = L2_2.get_imagepath
    L2_2 = L2_2()
    L2_2 = L1_1(L2_2, L2_2())
    L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, L2_2()))
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, "^c:\\")
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L1_1 = L1_1(L2_2, "^\\\\")
      if not L1_1 then
        L1_1 = mp
        L1_1 = L1_1.CLEAN
        return L1_1
      end
    end
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, "\\program files", 1, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L1_1 = L1_1(L2_2, "regsvr32.exe", 1, true)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L2_2 = L0_0
        L1_1 = L1_1(L2_2, "rundll32.exe", 1, true)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L2_2 = L0_0
          L1_1 = L1_1(L2_2, "svchost.exe", 1, true)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L2_2 = L0_0
            L1_1 = L1_1(L2_2, "onedrive", 1, true)
            if not L1_1 then
              L1_1 = string
              L1_1 = L1_1.find
              L2_2 = L0_0
              L1_1 = L1_1(L2_2, "\\google", 1, true)
              if not L1_1 then
                L1_1 = string
                L1_1 = L1_1.find
                L2_2 = L0_0
                L1_1 = L1_1(L2_2, "msiexec.exe", 1, true)
                if not L1_1 then
                  L1_1 = string
                  L1_1 = L1_1.find
                  L2_2 = L0_0
                  L1_1 = L1_1(L2_2, "\\yandex", 1, true)
                  if not L1_1 then
                    L1_1 = string
                    L1_1 = L1_1.find
                    L2_2 = L0_0
                    L1_1 = L1_1(L2_2, "dllhost.exe", 1, true)
                    if not L1_1 then
                      L1_1 = string
                      L1_1 = L1_1.find
                      L2_2 = L0_0
                      L1_1 = L1_1(L2_2, "\\mail.ru", 1, true)
                      if not L1_1 then
                        L1_1 = string
                        L1_1 = L1_1.find
                        L2_2 = L0_0
                        L1_1 = L1_1(L2_2, "\\steamapps\\", 1, true)
                        if not L1_1 then
                          L1_1 = string
                          L1_1 = L1_1.find
                          L2_2 = L0_0
                          L1_1 = L1_1(L2_2, "\\local\\temp\\rar$", 1, true)
                          if not L1_1 then
                            L1_1 = string
                            L1_1 = L1_1.find
                            L2_2 = L0_0
                            L1_1 = L1_1(L2_2, "\\local\\temp\\is-", 1, true)
                            if not L1_1 then
                              L1_1 = string
                              L1_1 = L1_1.find
                              L2_2 = L0_0
                              L1_1 = L1_1(L2_2, "\\local\\temp\\ns", 1, true)
                              if not L1_1 then
                                L1_1 = string
                                L1_1 = L1_1.find
                                L2_2 = L0_0
                                L1_1 = L1_1(L2_2, "\\local\\temp\\7z", 1, true)
                                if not L1_1 then
                                  L1_1 = string
                                  L1_1 = L1_1.find
                                  L2_2 = L0_0
                                  L1_1 = L1_1(L2_2, "service.exe", 1, true)
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
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    L2_2 = sysio
    L2_2 = L2_2.IsFileExists
    L2_2 = L2_2(L1_1)
    if L2_2 then
      L2_2 = string
      L2_2 = L2_2.lower
      L2_2 = L2_2(L1_1)
      if string.find(L2_2, "program files", 1, true) or string.find(L2_2, ".ocx", 1, true) then
        return mp.CLEAN
      end
      if mp.IsKnownFriendlyFile(L1_1, true, false) == false then
        bm.add_related_file(L1_1)
        if versioning.IsSeville() and versioning.GetCloudBlockLevel() >= 4 then
          TrackPidAndTechniqueBM("BM", "T1559.001", "interprocess_com_a")
        end
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
