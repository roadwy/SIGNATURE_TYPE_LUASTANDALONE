local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = pcall
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L0_0(L1_1)
if L0_0 and L1_1 ~= nil then
  L2_2 = L1_1.ppid
  if L2_2 ~= nil then
    L3_3 = L1_1.command_line
    if L3_3 ~= nil then
      L4_4 = string
      L4_4 = L4_4.lower
      L5_5 = L3_3
      L4_4 = L4_4(L5_5)
      L3_3 = L4_4
      L5_5 = L3_3
      L4_4 = L3_3.find
      L6_6 = "javaw.exe"
      L4_4 = L4_4(L5_5, L6_6)
      if not L4_4 then
        L5_5 = L3_3
        L4_4 = L3_3.find
        L6_6 = "node.exe"
        L4_4 = L4_4(L5_5, L6_6)
        if not L4_4 then
          L5_5 = L3_3
          L4_4 = L3_3.find
          L6_6 = "code.exe"
          L4_4 = L4_4(L5_5, L6_6)
          if not L4_4 then
            L5_5 = L3_3
            L4_4 = L3_3.find
            L6_6 = "chrome.exe"
            L4_4 = L4_4(L5_5, L6_6)
            if not L4_4 then
              L5_5 = L3_3
              L4_4 = L3_3.find
              L6_6 = "discord.exe"
              L4_4 = L4_4(L5_5, L6_6)
              if not L4_4 then
                L5_5 = L3_3
                L4_4 = L3_3.find
                L6_6 = "java.exe"
                L4_4 = L4_4(L5_5, L6_6)
                if not L4_4 then
                  L5_5 = L3_3
                  L4_4 = L3_3.find
                  L6_6 = "msedge.exe"
                  L4_4 = L4_4(L5_5, L6_6)
                  if not L4_4 then
                    L5_5 = L3_3
                    L4_4 = L3_3.find
                    L6_6 = "letsignit app.exe"
                    L4_4 = L4_4(L5_5, L6_6)
                    if not L4_4 then
                      L5_5 = L3_3
                      L4_4 = L3_3.find
                      L6_6 = "springtoolsuite4.exe"
                      L4_4 = L4_4(L5_5, L6_6)
                      if not L4_4 then
                        L5_5 = L3_3
                        L4_4 = L3_3.find
                        L6_6 = "atom.exe"
                        L4_4 = L4_4(L5_5, L6_6)
                        if not L4_4 then
                          L5_5 = L3_3
                          L4_4 = L3_3.find
                          L6_6 = "iisexpress.exe"
                          L4_4 = L4_4(L5_5, L6_6)
                          if not L4_4 then
                            L5_5 = L3_3
                            L4_4 = L3_3.find
                            L6_6 = "gitkraken.exe"
                            L4_4 = L4_4(L5_5, L6_6)
                            if not L4_4 then
                              L5_5 = L3_3
                              L4_4 = L3_3.find
                              L6_6 = "eclipse.exe"
                              L4_4 = L4_4(L5_5, L6_6)
                              if not L4_4 then
                                L5_5 = L3_3
                                L4_4 = L3_3.find
                                L6_6 = "atom.exe"
                                L4_4 = L4_4(L5_5, L6_6)
                                if not L4_4 then
                                  L5_5 = L3_3
                                  L4_4 = L3_3.find
                                  L6_6 = "springtoolsuite4.exe"
                                  L4_4 = L4_4(L5_5, L6_6)
                                  if not L4_4 then
                                    L5_5 = L3_3
                                    L4_4 = L3_3.find
                                    L6_6 = "gitkraken.exe"
                                    L4_4 = L4_4(L5_5, L6_6)
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
      elseif L4_4 then
        L4_4 = mp
        L4_4 = L4_4.CLEAN
        return L4_4
      end
    end
    L4_4 = IsTacticObservedForPid
    L5_5 = L2_2
    L6_6 = "processinjection_target"
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 then
      L4_4 = IsDetectionThresholdMet
      L5_5 = "BM"
      L4_4 = L4_4(L5_5)
      if L4_4 then
        L4_4 = TrackPidAndTechniqueBM
        L5_5 = "BM"
        L6_6 = "T1059"
        L4_4(L5_5, L6_6, "commandscriptinj")
        L4_4 = bm
        L4_4 = L4_4.get_process_relationships
        L5_5 = L4_4()
        L6_6 = nil
        for _FORV_10_, _FORV_11_ in ipairs(L5_5) do
          if mp.bitand(_FORV_11_.reason_ex, 1) == 1 and (string.find(string.lower(_FORV_11_.image_path), "\\cmd.exe\\", 1, true) or string.find(string.lower(_FORV_11_.image_path), "\\powershell.exe\\", 1, true) or string.find(string.lower(_FORV_11_.image_path), "\\wscript.exe\\", 1, true) or string.find(string.lower(_FORV_11_.image_path), "\\cscript.exe\\", 1, true) or string.find(string.lower(_FORV_11_.image_path), "\\mshta.exe\\", 1, true)) then
            L6_6 = _FORV_11_.ppid
            TrackPidAndTechniqueBM(L6_6, "T1059", "commandscriptinjthreshold")
          end
        end
        return mp.INFECTED
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
