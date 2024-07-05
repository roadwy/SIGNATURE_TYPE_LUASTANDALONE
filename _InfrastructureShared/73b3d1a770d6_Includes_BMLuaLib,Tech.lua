local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = isParentPackageManager
L2_2 = L0_0.ppid
L3_3 = true
L1_1 = L1_1(L2_2, L3_3)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
L2_2 = 0
L3_3 = this_sigattrlog
L3_3 = L3_3[3]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L3_3 = L3_3.utf8p1
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L3_3 = L3_3.np2
    if L3_3 ~= nil then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[3]
      L1_1 = L3_3.utf8p1
      L3_3 = this_sigattrlog
      L3_3 = L3_3[3]
      L2_2 = L3_3.np2
    end
  end
end
if L1_1 == nil or L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = tonumber
L4_4 = tostring
L5_5 = L2_2
L4_4 = L4_4(L5_5)
L5_5 = 8
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.bsplit
L5_5 = L3_3
L6_6 = 3
L7_7 = L4_4(L5_5, L6_6)
if L4_4 == 0 and L5_5 == 0 and L6_6 == 0 and L7_7 == 0 then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = bm
L8_8 = L8_8.get_imagepath
L8_8 = L8_8()
if L8_8 == nil then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = "BM"
if string.find(L8_8, "/chmod", -6, true) then
  L9_9 = L0_0.ppid
end
if mp.bitand(L4_4, 1) == 1 or mp.bitand(L5_5, 1) == 1 or mp.bitand(L6_6, 1) == 1 then
  if L9_9 == "BM" then
    bm.trigger_sig("ChmodToExec", L1_1)
  else
    bm.trigger_sig("ChmodToExec", L1_1, L9_9)
  end
  TrackPidAndTechniqueBM(L9_9, "T1222", "DefenseEvasion_PermissionModification_ChmodToExec")
end
if mp.bitand(L7_7, 2) == 2 or mp.bitand(L7_7, 4) == 4 then
  if L9_9 == "BM" then
    bm.trigger_sig("UidGidChange", L1_1)
  else
    bm.trigger_sig("UidGidChange", L1_1, L9_9)
  end
  TrackPidAndTechniqueBM(L9_9, "T1548.001", "PrivilegeEscalation_AbuseElevationControlMechanism_SetuidSetgid")
end
if true == false then
  return mp.CLEAN
end
bm.add_related_file(L1_1)
addRelatedProcess()
return mp.INFECTED
