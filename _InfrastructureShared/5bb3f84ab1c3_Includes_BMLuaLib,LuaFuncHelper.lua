local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = getCurrentProcessInjectors
L2_2 = L0_0()
L3_3 = L2_2.count
if L3_3 >= 5 then
  L3_3 = bm
  L3_3 = L3_3.add_related_string
  L4_4 = "injection_relationship"
  L3_3(L4_4, L5_5, L6_6)
  L3_3 = bm
  L3_3 = L3_3.add_related_string
  L4_4 = "GenRansom_injected"
  L3_3(L4_4, L5_5, L6_6)
  L3_3 = bm
  L3_3 = L3_3.add_related_string
  L4_4 = "GenRansom_injector"
  L3_3(L4_4, L5_5, L6_6)
  L3_3 = bm
  L3_3 = L3_3.get_process_relationships
  L4_4 = L3_3()
  for L8_8, L9_9 in L5_5(L6_6) do
    L10_10 = L9_9.image_path
    if L10_10 ~= nil then
      L10_10 = string
      L10_10 = L10_10.lower
      L10_10 = L10_10(MpCommon.PathToWin32Path(L9_9.image_path))
      if sysio.IsFileExists(L10_10) and not mp.IsKnownFriendlyFile(L10_10, true, false) then
        if L9_9.ppid ~= nil then
          bm.add_threat_process(L9_9.ppid)
        end
        bm.add_threat_file(L10_10)
      end
    end
  end
  for L8_8, L9_9 in L5_5(L6_6) do
    L10_10 = L9_9.image_path
    if L10_10 ~= nil then
      L10_10 = string
      L10_10 = L10_10.lower
      L10_10 = L10_10(MpCommon.PathToWin32Path(L9_9.image_path))
      if sysio.IsFileExists(L10_10) and not mp.IsKnownFriendlyFile(L10_10, true, false) then
        if L9_9.ppid ~= nil then
          bm.add_threat_process(L9_9.ppid)
        end
        bm.add_threat_file(L10_10)
      end
    end
  end
  return L5_5
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
