local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.command_line
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0.command_line
L1_1 = L1_1(L2_2)
L3_3 = L1_1
L2_2 = L1_1.find
L2_2 = L2_2(L3_3, "\\asppc.exe", 1, true)
if not L2_2 then
  L3_3 = L1_1
  L2_2 = L1_1.find
  L2_2 = L2_2(L3_3, "\\ecomppc.exe", 1, true)
elseif L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.match
L2_2 = L2_2(L3_3, "^[^%l]?([a-z]):\\")
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.byte
L3_3 = L3_3(L2_2)
L3_3 = L3_3 - string.byte("a")
if L3_3 == nil or L3_3 < 0 or L3_3 > 26 then
  return mp.CLEAN
end
if sysio.GetLogicalDriveType(L3_3) ~= 4 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM(L0_0.ppid, "T1021.002", "exec_from_remoteshare")
return mp.INFECTED
