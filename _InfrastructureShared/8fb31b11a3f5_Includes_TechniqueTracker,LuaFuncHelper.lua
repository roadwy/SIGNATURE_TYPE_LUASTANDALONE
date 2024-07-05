local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.utf8p1
  if L0_0 ~= nil then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.utf8p2
    if L0_0 ~= nil then
      L0_0 = string
      L0_0 = L0_0.lower
      L1_1 = this_sigattrlog
      L1_1 = L1_1[2]
      L1_1 = L1_1.utf8p1
      L0_0 = L0_0(L1_1)
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = this_sigattrlog
      L2_2 = L2_2[2]
      L2_2 = L2_2.utf8p2
      L1_1 = L1_1(L2_2)
      L2_2 = bm
      L2_2 = L2_2.get_current_process_startup_info
      L2_2 = L2_2()
      L3_3 = string
      L3_3 = L3_3.lower
      L4_4 = L2_2.command_line
      L3_3 = L3_3(L4_4)
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L3_3
      L4_4 = L4_4(L5_5, "\\program files\\", 1, true)
      if not L4_4 then
        L4_4 = string
        L4_4 = L4_4.find
        L5_5 = L3_3
        L4_4 = L4_4(L5_5, "srtasks.exe", 1, true)
        if not L4_4 then
          L4_4 = string
          L4_4 = L4_4.find
          L5_5 = L3_3
          L4_4 = L4_4(L5_5, "rstrui.exe", 1, true)
          if not L4_4 then
            L4_4 = string
            L4_4 = L4_4.find
            L5_5 = L3_3
            L4_4 = L4_4(L5_5, "executescheduledsppcreation", 1, true)
            if not L4_4 then
              L4_4 = string
              L4_4 = L4_4.find
              L5_5 = L3_3
              L4_4 = L4_4(L5_5, "wbengine.exe", 1, true)
              if not L4_4 then
                L4_4 = string
                L4_4 = L4_4.find
                L5_5 = L3_3
                L4_4 = L4_4(L5_5, "veeam", 1, true)
                if not L4_4 then
                  L4_4 = string
                  L4_4 = L4_4.find
                  L5_5 = L3_3
                  L4_4 = L4_4(L5_5, "beremote", 1, true)
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
      L4_4 = StringEndsWith
      L5_5 = L0_0
      L4_4 = L4_4(L5_5, "\\system")
      if L4_4 then
        L4_4 = StringStartsWith
        L5_5 = L1_1
        L4_4 = L4_4(L5_5, "\\\\.\\")
        if not L4_4 then
          L4_4 = StringStartsWith
          L5_5 = L1_1
          L4_4 = L4_4(L5_5, "\\\\?\\")
          if not L4_4 then
            L5_5 = L1_1
            L4_4 = L1_1.find
            L4_4 = L4_4(L5_5, "\\device\\", 1, true)
            if not L4_4 then
              L5_5 = L1_1
              L4_4 = L1_1.find
              L4_4 = L4_4(L5_5, "\\volume{", 1, true)
            end
          end
        else
          if L4_4 then
            L4_4 = pcall
            L5_5 = MpCommon
            L5_5 = L5_5.PathToWin32Path
            L5_5 = L4_4(L5_5, L1_1)
            L1_1 = L5_5
            _ = L4_4
        end
        else
          L4_4 = StringStartsWith
          L5_5 = L1_1
          L4_4 = L4_4(L5_5, "%")
          if L4_4 then
            L4_4 = pcall
            L5_5 = mp
            L5_5 = L5_5.ContextualExpandEnvironmentVariables
            L5_5 = L4_4(L5_5, L1_1)
            L1_1 = L5_5
            _ = L4_4
          end
        end
        if L1_1 ~= nil then
          L5_5 = L1_1
          L4_4 = L1_1.match
          L5_5 = L4_4(L5_5, "^\\\\(.-)\\(.+)$")
          if L4_4 ~= nil and L5_5 ~= nil then
            if StringStartsWith(L5_5, "c$\\") or StringStartsWith(L5_5, "admin$\\") then
              AddPidSpecificTechniqueAndTactic("BM", "T1021.002", "syshiveexfil_to_adminshares")
            end
            AddPidSpecificTechniqueAndTactic("BM", "T1020", "exfil_to_networkshare")
            AppendToRollingQueue("SuspExfilServer", L4_4, nil, 5000)
          end
          AppendToRollingQueue("SuspSyshiveExfilPath", L1_1, nil, 5000)
          TrackPidAndTechniqueBM("BM", "T1003.002", "sechiveexfil_from_shadowcopy")
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
