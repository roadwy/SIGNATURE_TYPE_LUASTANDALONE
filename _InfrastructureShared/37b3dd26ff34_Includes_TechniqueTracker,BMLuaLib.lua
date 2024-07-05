local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.command_line
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L0_0.command_line)
    if L1_1:find("antimalware_provider.+\\frhook") then
      return mp.CLEAN
    end
    if L1_1:find("c:\\sophrm\\invoke-blkeyescrow.ps1", 1, true) then
      return mp.CLEAN
    end
    if L1_1:find("c:\\vpc10\\applicationupdate\\sub_settings_defender.vbs", 1, true) then
      return mp.CLEAN
    end
    if (L1_1:find(":\\program files\\", 1, true) or L1_1:find(":\\program files (x86)\\", 1, true)) and (L1_1:find("checkpoint", 1, true) or L1_1:find("fortinet", 1, true)) then
      return mp.CLEAN
    end
    bm_AddRelatedFileFromCommandLine(L1_1, nil, nil, 1)
    AddResearchData(L0_0.ppid, true)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
