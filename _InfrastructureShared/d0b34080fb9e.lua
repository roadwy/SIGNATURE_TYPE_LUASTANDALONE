local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = bm
  L0_0 = L0_0.get_process_relationships
  L1_1 = L0_0()
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = L6_6.image_path
    if L7_7 ~= nil then
      L7_7 = mp
      L7_7 = L7_7.bitand
      L8_8 = L6_6.reason_ex
      L7_7 = L7_7(L8_8, 1)
      L8_8 = string
      L8_8 = L8_8.lower
      L8_8 = L8_8(L6_6.image_path)
      if L7_7 == 1 and (string.find(L8_8, "\\mshta.exe", 1, true) or string.find(L8_8, "\\bitsadmin.exe", 1, true) or string.find(L8_8, "\\msbuild.exe", 1, true) or string.find(L8_8, "\\ieexec.exe", 1, true) or string.find(L8_8, "\\wmic.exe", 1, true) or string.find(L8_8, "\\wscript.exe", 1, true) or string.find(L8_8, "\\cscript.exe", 1, true) or string.find(L8_8, "\\splunkd.exe", 1, true) or string.find(L8_8, "\\runscripthelper.exe", 1, true) or not mp.IsKnownFriendlyFile(MpCommon.PathToWin32Path(L6_6.image_path), true, false)) and not string.find(L8_8, "\\explorer.exe", 1, true) then
        return mp.INFECTED
      end
    end
  end
  return L2_2
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
