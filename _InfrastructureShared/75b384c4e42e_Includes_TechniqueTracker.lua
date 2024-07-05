local L0_0, L1_1, L2_2
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = L1_1.ppid
  if L2_2 ~= nil then
    L0_0 = L1_1.ppid
  end
end
L2_2 = bm
L2_2 = L2_2.get_imagepath
L2_2 = L2_2()
if L2_2 ~= nil then
  L2_2 = MpCommon.PathToWin32Path(L2_2)
end
if L2_2 == nil or L0_0 == nil then
  return mp.CLEAN
end
L2_2 = string.lower(L2_2)
if L2_2:find("microsoft\\onedrive\\", 1, true) or L2_2:find("windows\\ccm", 1, true) then
  return mp.CLEAN
end
if L2_2:find("windows\\fortiemsinstaller", 1, true) then
  return mp.CLEAN
end
if IsDetectionThresholdMet(L0_0) then
  TrackPidAndTechniqueBM(L0_0, "T1053.005", "tt_remediate_cantidate")
  return mp.INFECTED
end
return mp.CLEAN
