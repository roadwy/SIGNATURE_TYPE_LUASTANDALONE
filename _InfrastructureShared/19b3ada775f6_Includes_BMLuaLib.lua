local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p1
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
L2_2 = L1_1.command_line
if L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.find
  L7_7 = true
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
  if not L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L3_3 = sysio
L3_3 = L3_3.IsFileExists
L3_3 = L3_3(L4_4)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.IsKnownFriendlyFile
  L3_3 = L3_3(L4_4, L5_5, L6_6)
  if L3_3 == false then
    L3_3 = MpCommon
    L3_3 = L3_3.GetPersistContextNoPath
    L3_3 = L3_3(L4_4)
    if L3_3 ~= nil then
      for L7_7, L8_8 in L4_4(L5_5) do
        if string.lower(L8_8) == string.lower(L0_0) then
          bm.add_related_file(L0_0)
          return mp.INFECTED
        end
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
