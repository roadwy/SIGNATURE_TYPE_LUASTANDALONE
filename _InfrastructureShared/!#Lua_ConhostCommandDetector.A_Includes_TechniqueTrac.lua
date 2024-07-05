if mp.get_mpattributesubstring("ATTR:ConHost_") then
  if mp.get_mpattribute("ATTR:ConHost_dir_T1083_FileAndDirectoryDiscovery") then
    TrackPidAndTechnique("RTP", "T1083", "ConHost_dir_T1083_FileAndDirectoryDiscovery")
  elseif mp.get_mpattribute("ATTR:ConHost_dir_T1552_001_CredentialsInFiles") then
    TrackPidAndTechnique("RTP", "T1552.001", "ConHost_dir_T1552_001_CredentialsInFiles")
  elseif mp.get_mpattribute("ATTR:ConHost_dir_T1087_001_Account_Discovery_Local_Account") then
    TrackPidAndTechnique("RTP", "T1087.001", "ConHost_dir_T1087_001_Account_Discovery_Local_Account")
  elseif mp.get_mpattribute("ATTR:ConHost_dir_T1552_004_PrivateKeys") then
    TrackPidAndTechnique("RTP", "T1552.004", "ConHost_dir_T1552_004_PrivateKeys")
  elseif mp.get_mpattribute("ATTR:ConHost_type_T1552_001_CredentialsInFiles") then
    TrackPidAndTechnique("RTP", "T1552.001", "ConHost_type_T1552_001_CredentialsInFiles")
  elseif mp.get_mpattribute("ATTR:ConHost_del_T1070_004_FileDeletion") then
    TrackPidAndTechnique("RTP", "T1070.004", "ConHost_del_T1070_004_FileDeletion")
  elseif mp.get_mpattribute("ATTR:ConHost_del_T1490_InhibitSystemRecovery") then
    TrackPidAndTechnique("RTP", "T1490", "ConHost_del_T1490_InhibitSystemRecovery")
  elseif mp.get_mpattribute("ATTR:ConHost_ver_T1082_SystemInformationDiscovery") then
    TrackPidAndTechnique("RTP", "T1082", "ConHost_ver_T1082_SystemInformationDiscovery")
  elseif mp.get_mpattribute("ATTR:ConHost_set_T1574_007_PathInterByPathEnv") then
    TrackPidAndTechnique("RTP", "T1574.007", "ConHost_set_T1574_007_PathInterByPathEnv")
  elseif mp.get_mpattribute("ATTR:ConHost_set_T1033_SystemOwnerUserDiscovery") then
    TrackPidAndTechnique("RTP", "T1033", "ConHost_set_T1033_SystemOwnerUserDiscovery")
  elseif mp.get_mpattribute("ATTR:ConHost_set_T1087_001_LocalAccount") then
    TrackPidAndTechnique("RTP", "T1087.001", "ConHost_set_T1087_001_LocalAccount")
  elseif mp.get_mpattribute("ATTR:ConHost_set_T1083_FileAndDirectoryDiscovery") then
    TrackPidAndTechnique("RTP", "T1083", "ConHost_set_T1083_FileAndDirectoryDiscovery")
  elseif mp.get_mpattribute("ATTR:ConHost_datetime_T1124_SystemTimeDiscovery") then
    TrackPidAndTechnique("RTP", "T1124", "ConHost_datetime_T1124_SystemTimeDiscovery")
  elseif mp.get_mpattribute("ATTR:ConHost_path_T1574_007__PathInterByPathEnv") then
    TrackPidAndTechnique("RTP", "T1574.007", "ConHost_path_T1574_007__PathInterByPathEnv")
  end
  if true then
    return mp.INFECTED
  end
end
return mp.CLEAN
