local L0_0, L1_1
if this_sigattrlog[26].matched and this_sigattrlog[26].utf8p1 ~= nil and this_sigattrlog[26].ppid ~= nil then
  L1_1 = this_sigattrlog[26].ppid
  L0_0 = string.lower(this_sigattrlog[26].utf8p1)
end
if L0_0 and L1_1 and (GetTacticsTableForPid(L1_1).winrshost_childproc or GetTacticsTableForPid(L1_1).amsitampering or GetTacticsTableForPid(L1_1).wsmprovhost_childproc or GetTacticsTableForPid(L1_1).wmi_childproc or GetTacticsTableForPid(L1_1).remotedropexe_childproc or GetTacticsTableForPid(L1_1).python_childproc or GetTacticsTableForPid(L1_1).rundll32_childproc or GetTacticsTableForPid(L1_1).wscript_childproc or GetTacticsTableForPid(L1_1).cscript_childproc or GetTacticsTableForPid(L1_1).mshta_childproc or GetTacticsTableForPid(L1_1).webshell_childproc or GetTacticsTableForPid(L1_1).exec_remotedroppedscript_a or GetTacticsTableForPid(L1_1).folderguard_blk or GetTacticsTableForPid(L1_1).folderguard_folder_blk) then
  bm_AddRelatedFileFromCommandLine(L0_0, nil, nil, 1)
  TrackPidAndTechniqueBM(this_sigattrlog[26].ppid, "T1546.013", "posh_profile_create")
  return mp.INFECTED
end
return mp.CLEAN
