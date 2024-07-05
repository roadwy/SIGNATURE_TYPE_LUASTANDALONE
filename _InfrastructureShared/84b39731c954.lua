local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = tonumber
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.utf8p1
L0_0 = L0_0(L1_1)
if L0_0 == nil or L0_0 < 315392 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
if L1_1 ~= nil then
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = L7_7.image_path
    if L8_8 ~= nil then
      L8_8 = string
      L8_8 = L8_8.lower
      L8_8 = L8_8(MpCommon.PathToWin32Path(L7_7.image_path))
      if sysio.IsFileExists(L8_8) and not mp.IsKnownFriendlyFile(L8_8, true, false) then
        bm.add_related_file(L8_8)
      end
    end
  end
end
L8_8 = L5_5()
L8_8 = L4_4(L5_5, L6_6, L7_7, L8_8, L5_5())
if L4_4 then
  L6_6 = true
  L7_7 = false
  if not L4_4 then
    L4_4(L5_5)
  end
end
L6_6 = "RwToX"
L4_4(L5_5, L6_6)
L6_6 = L4_4.ppid
L7_7 = "m+"
L5_5(L6_6, L7_7)
L6_6 = "SmsAsyncScanEvent"
L7_7 = 1
L5_5(L6_6, L7_7)
return L5_5
