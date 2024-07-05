local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L6_6 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L1_1())
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1.command_line
L2_2 = L2_2(L3_3)
L3_3 = nil
if L2_2 then
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L2_2
  L6_6 = "svchost.exe"
  L4_4 = L4_4(L5_5, L6_6, 1, true)
  if L4_4 ~= nil then
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L2_2
    L6_6 = "-k netsvcs"
    L4_4 = L4_4(L5_5, L6_6, 1, true)
    if L4_4 == nil then
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L2_2
      L6_6 = "-p schedule"
      L4_4 = L4_4(L5_5, L6_6, 1, true)
    elseif L4_4 ~= nil then
      L3_3 = 1
    end
  end
end
if L0_0 then
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L0_0
  L6_6 = "taskeng.exe"
  L4_4 = L4_4(L5_5, L6_6, 1, true)
  if not L4_4 then
    L4_4 = string
    L4_4 = L4_4.find
    L5_5 = L0_0
    L6_6 = "taskhostw.exe"
    L4_4 = L4_4(L5_5, L6_6, 1, true)
  elseif L4_4 then
    L3_3 = 1
  end
end
if L3_3 then
  L4_4 = bm
  L4_4 = L4_4.get_process_relationships
  L5_5 = L4_4()
  L6_6 = nil
  for _FORV_10_, _FORV_11_ in ipairs(L5_5) do
    if mp.bitand(_FORV_11_.reason_ex, 1) == 1 and (string.find(string.lower(_FORV_11_.image_path), "\\cmd.exe", 1, true) or string.find(string.lower(_FORV_11_.image_path), "\\powershell.exe", 1, true) or string.find(string.lower(_FORV_11_.image_path), "\\wscript.exe", 1, true) or string.find(string.lower(_FORV_11_.image_path), "\\cscript.exe", 1, true) or string.find(string.lower(_FORV_11_.image_path), "\\mshta.exe", 1, true)) then
      L6_6 = _FORV_11_.ppid
      if not IsPidExcluded(L6_6) then
        TrackPidAndTechniqueBM(L6_6, "T1059", "commandscriptschdtask")
        TrackPidAndTechniqueBM(L6_6, "T1053.005", "schtask_target")
        return mp.INFECTED
      end
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
