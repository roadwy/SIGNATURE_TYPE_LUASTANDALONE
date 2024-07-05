local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = MpCommon
L1_1 = L1_1.GetMountedFileBackingFilePath
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.enum_mpattributesubstring
  L3_3 = "ESRP:PEStatic:"
  L2_2 = L2_2(L3_3)
  L3_3 = #L2_2
  if L3_3 > 0 then
    L3_3 = mp
    L3_3 = L3_3.INFECTED
    return L3_3
  end
  L3_3 = mp
  L3_3 = L3_3.enum_mpattributesubstring
  L3_3 = L3_3(L4_4)
  for L7_7, L8_8 in L4_4(L5_5) do
    if L8_8 == "BM_ESRP:Lua:VulnerableAsrNotOnClose" then
      return mp.INFECTED
    end
    if string.find(L8_8, "^BM_ESRP:Hstr:") then
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
