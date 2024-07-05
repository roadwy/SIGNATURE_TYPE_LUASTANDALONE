local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L6_6 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L1_1())
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "fsprocsvc.exe"
  L4_4 = 1
  L5_5 = true
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = pcall
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L2_2 = L1_1(L2_2)
if L1_1 and L2_2 ~= nil then
  L3_3 = L2_2.ppid
  if L3_3 ~= nil then
    L4_4 = IsTechniqueObservedForPid
    L5_5 = L3_3
    L6_6 = "T1036"
    L4_4 = L4_4(L5_5, L6_6)
    if L4_4 then
      L4_4 = TrackPidAndTechniqueBM
      L5_5 = "BM"
      L6_6 = "T1059"
      L4_4(L5_5, L6_6, "commandscriptmasq")
      L4_4 = bm
      L4_4 = L4_4.get_process_relationships
      L5_5 = L4_4()
      L6_6 = nil
      for _FORV_10_, _FORV_11_ in ipairs(L5_5) do
        if mp.bitand(_FORV_11_.reason_ex, 1) == 1 and (string.find(string.lower(_FORV_11_.image_path), "\\cmd.exe\\", 1, true) or string.find(string.lower(_FORV_11_.image_path), "\\powershell.exe\\", 1, true) or string.find(string.lower(_FORV_11_.image_path), "\\wscript.exe\\", 1, true) or string.find(string.lower(_FORV_11_.image_path), "\\cscript.exe\\", 1, true) or string.find(string.lower(_FORV_11_.image_path), "\\mshta.exe\\", 1, true)) then
          L6_6 = _FORV_11_.ppid
          TrackPidAndTechniqueBM(L6_6, "T1059", "commandscriptmasq")
        end
      end
      return mp.INFECTED
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
