local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[7]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[7]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = bm
    L0_0 = L0_0.get_current_process_startup_info
    L0_0 = L0_0()
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = L0_0.command_line
    L1_1 = L1_1(L2_2)
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L1_1, "chocolatey.", 1, true)
    if not L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L2_2 = L2_2(L1_1, "-appxprovisioned", 1, true)
      if not L2_2 then
        L2_2 = string
        L2_2 = L2_2.find
        L2_2 = L2_2(L1_1, ".visualstudio.com", 1, true)
        if not L2_2 then
          L2_2 = string
          L2_2 = L2_2.find
          L2_2 = L2_2(L1_1, ".azure.com", 1, true)
          if not L2_2 then
            L2_2 = string
            L2_2 = L2_2.find
            L2_2 = L2_2(L1_1, "cloudtest", 1, true)
            if not L2_2 then
              L2_2 = string
              L2_2 = L2_2.find
              L2_2 = L2_2(L1_1, " -nologo ", 1, true)
              if not L2_2 then
                L2_2 = string
                L2_2 = L2_2.find
                L2_2 = L2_2(L1_1, " -noprofile ", 1, true)
                if not L2_2 then
                  L2_2 = string
                  L2_2 = L2_2.find
                  L2_2 = L2_2(L1_1, "get-windowsoptionalfeature", 1, true)
                  if not L2_2 then
                    L2_2 = string
                    L2_2 = L2_2.find
                    L2_2 = L2_2(L1_1, "enableagent", 1, true)
                    if not L2_2 then
                      L2_2 = string
                      L2_2 = L2_2.find
                      L2_2 = L2_2(L1_1, "\\syncro\\", 1, true)
                      if not L2_2 then
                        L2_2 = string
                        L2_2 = L2_2.find
                        L2_2 = L2_2(L1_1, "\\program files", 1, true)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    elseif L2_2 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(this_sigattrlog[7].utf8p1)
    if string.find(L2_2, "\\program files", 1, true) or string.find(L2_2, "\\chocolatey", 1, true) or string.find(L2_2, "\\dismhost.exe", 1, true) or string.find(L2_2, "\\lgpo.exe", 1, true) then
      return mp.CLEAN
    end
    if mp.IsKnownFriendlyFile(L2_2, true, false) == false then
      bm.add_related_file(L2_2)
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
