local L0_0, L1_1, L2_2, L3_3
L0_0 = pcall
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L0_0(L1_1)
if L0_0 and L1_1 ~= nil then
  L2_2 = L1_1.ppid
  if L2_2 ~= nil then
    L3_3 = L1_1.command_line
    if L3_3 ~= nil then
      L3_3 = string.lower(L3_3)
      if L3_3:find("teamviewer", 1, true) or L3_3:find("g2mcomm.exe") or L3_3:find("teams", 1, true) or L3_3:find("discord.exe") or L3_3:find("explorer.exe") or L3_3:find("lunc.exe") or L3_3:find("lync.exe") or L3_3:find("youdaodict.exe") or L3_3:find("gitkraken.exe") then
        return mp.CLEAN
      end
    end
    if IsTacticObservedForPid(L2_2, "processinjection_target") and (GetTaintLevelHR() ~= nil or GetTaintLevelHR() == "Medium" or GetTaintLevelHR() == "High") then
      TrackPidAndTechniqueBM("BM", "T1056.001", "keylog")
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
