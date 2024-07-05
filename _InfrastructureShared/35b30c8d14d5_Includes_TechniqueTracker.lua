local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
  if L1_1 ~= nil then
    L1_1 = L0_0.command_line
    if L1_1 ~= nil then
      L1_1 = L0_0.command_line
      L2_2 = string
      L2_2 = L2_2.lower
      L3_3 = L1_1
      L2_2 = L2_2(L3_3)
      L3_3 = L2_2.find
      L3_3 = L3_3(L2_2, "powershell", 1, true)
      if not L3_3 then
        L3_3 = L2_2.find
        L3_3 = L3_3("pwsh", 1, true)
      elseif L3_3 then
        L3_3 = L2_2.find
        L3_3 = L3_3(L2_2, "microsoft.skypeapp", 1, true)
        if not L3_3 then
          L3_3 = L2_2.find
          L3_3 = L3_3(L2_2, "final result:", 1, true)
        elseif L3_3 then
          L3_3 = mp
          L3_3 = L3_3.CLEAN
          return L3_3
        end
        L3_3 = L2_2.find
        L3_3 = L3_3(L2_2, "windows\\ccm", 1, true)
        if not L3_3 then
          L3_3 = L2_2.find
          L3_3 = L3_3(L2_2, "\\sysvol\\", 1, true)
          if not L3_3 then
            L3_3 = L2_2.find
            L3_3 = L3_3(L2_2, "\\netlogon\\", 1, true)
          end
        elseif L3_3 then
          L3_3 = mp
          L3_3 = L3_3.CLEAN
          return L3_3
        end
        L3_3 = L2_2.match
        L3_3 = L3_3(L2_2, "%s+[%-/]en?c?o?d?e?d?c?o?m?m?a?n?d?%s+")
        if L3_3 then
          L3_3 = GetTacticsTableForPid
          L3_3 = L3_3(L0_0.ppid)
          if L3_3 ~= nil and type(L3_3) == "table" then
            if L3_3.obfuscation_b64 then
            end
            if L3_3.intent_cred_enum_amsi then
            end
            if L3_3.intent_schtask_amsi then
            end
            if L3_3.intent_schtask_script then
            end
            if L3_3.posh_remote_exec then
            end
            if L3_3.posh_webaccess then
            end
            if L3_3.posh_apiexec then
            end
            if L3_3.amsi_bypass then
            end
            if L3_3.amsitampering then
            end
            if 2 < 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 2 + 2 then
              TrackPidAndTechniqueBM(L0_0.ppid, "T1027", "tt-thresholdmet")
              return mp.INFECTED
            end
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
