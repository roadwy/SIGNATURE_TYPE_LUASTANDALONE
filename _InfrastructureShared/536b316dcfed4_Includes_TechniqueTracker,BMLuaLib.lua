local L0_0
if this_sigattrlog[27].matched and this_sigattrlog[27].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[27].utf8p2)
end
if this_sigattrlog[28].matched and this_sigattrlog[28].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[28].utf8p2)
end
if L0_0 then
  if bm.get_imagepath() ~= nil and bm.get_imagepath():len() > 11 and bm.get_imagepath():sub(-12):lower() == "\\svchost.exe" and bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().command_line ~= nil and string.lower(bm.get_current_process_startup_info().command_line):find("gpsvc", 1, true) then
    return mp.CLEAN
  end
  if L0_0:find("windowspowershell\\v1.0\\", 1, true) or L0_0:find("documents\\powershell\\", 1, true) then
    bm_AddRelatedFileFromCommandLine(L0_0, nil, nil, 1)
    TrackPidAndTechniqueBM(this_sigattrlog[27].ppid, "T1546.013", "posh_profile_modify")
    return mp.INFECTED
  end
end
return mp.CLEAN
