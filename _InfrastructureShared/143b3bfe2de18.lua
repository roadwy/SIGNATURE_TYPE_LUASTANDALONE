local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
L0_0 = false
L1_1 = false
L2_2 = nil
L3_3 = bm
L3_3 = L3_3.get_process_relationships
L4_4 = L3_3()
for L8_8, L9_9 in L5_5(L6_6) do
  L2_2 = L9_9.ppid
  L10_10 = bm
  L10_10 = L10_10.get_process_relationships
  L11_11 = L2_2
  L11_11 = L10_10(L11_11)
  for L15_15, L16_16 in L12_12(L13_13) do
    L17_17 = L16_16.image_path
    if L17_17 ~= nil then
      L17_17 = string
      L17_17 = L17_17.lower
      L18_18 = MpCommon
      L18_18 = L18_18.PathToWin32Path
      L18_18 = L18_18(L16_16.image_path)
      L17_17 = L17_17(L18_18, L18_18(L16_16.image_path))
      L18_18 = string
      L18_18 = L18_18.find
      L18_18 = L18_18(L17_17, "\\wordpad.exe", -12, true)
      if not L18_18 then
        L18_18 = L16_16.ppid
        if sysio.IsFileExists(L17_17) and not mp.IsKnownFriendlyFile(L17_17, true, false) then
          bm.add_related_file(L17_17)
          bm.request_SMS(L18_18, "m+")
          L0_0 = true
        end
      end
    end
  end
  if not L12_12 then
    L12_12(L13_13)
    L12_12(L13_13, L14_14)
    L1_1 = true
  end
end
if L0_0 == false and L3_3 ~= nil and L1_1 == false then
  L5_5(L6_6, L7_7)
end
return L5_5
