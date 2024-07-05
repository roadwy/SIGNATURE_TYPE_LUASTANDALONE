local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = pcall
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L0_0(L1_1)
if L0_0 and L1_1 ~= nil then
  L2_2 = L1_1.ppid
  if L2_2 ~= nil then
    L3_3 = IsTechniqueObservedForPid
    L4_4 = L2_2
    L5_5 = "T1027.002"
    L3_3 = L3_3(L4_4, L5_5)
    if L3_3 then
      L3_3 = TrackPidAndTechniqueBM
      L4_4 = "BM"
      L5_5 = "T1059"
      L3_3(L4_4, L5_5, "commandscriptpacked")
      L3_3 = bm
      L3_3 = L3_3.get_process_relationships
      L4_4 = L3_3()
      L5_5 = nil
      for _FORV_9_, _FORV_10_ in ipairs(L4_4) do
        if mp.bitand(_FORV_10_.reason_ex, 1) == 1 and (string.find(string.lower(_FORV_10_.image_path), "\\cmd.exe\\", 1, true) or string.find(string.lower(_FORV_10_.image_path), "\\powershell.exe\\", 1, true) or string.find(string.lower(_FORV_10_.image_path), "\\wscript.exe\\", 1, true) or string.find(string.lower(_FORV_10_.image_path), "\\cscript.exe\\", 1, true) or string.find(string.lower(_FORV_10_.image_path), "\\mshta.exe\\", 1, true)) then
          L5_5 = _FORV_10_.ppid
          TrackPidAndTechniqueBM(L5_5, "T1059", "commandscriptpacked")
        end
      end
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
