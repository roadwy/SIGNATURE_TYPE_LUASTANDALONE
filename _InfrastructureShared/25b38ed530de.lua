local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
L2_2 = string
L2_2 = L2_2.find
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.GetExecutablesFromCommandLine
  L2_2 = L2_2(L3_3)
  for L6_6, L7_7 in L3_3(L4_4) do
    if sysio.IsFileExists(L7_7) and not mp.IsKnownFriendlyFile(L7_7, true, false) then
      bm.add_related_file(L7_7)
    end
  end
  for _FORV_8_, _FORV_9_ in L5_5(L6_6) do
    if _FORV_9_.image_path ~= nil and mp.bitand(_FORV_9_.reason_ex, 1) == 1 then
      if string.lower(string.match(_FORV_9_.image_path, "([^\\]-[^\\%.]+)$")) ~= nil and ({
        ["winword.exe"] = true,
        ["excel.exe"] = true,
        ["powerpnt.exe"] = true
      })[string.lower(string.match(_FORV_9_.image_path, "([^\\]-[^\\%.]+)$"))] then
        return mp.INFECTED
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
