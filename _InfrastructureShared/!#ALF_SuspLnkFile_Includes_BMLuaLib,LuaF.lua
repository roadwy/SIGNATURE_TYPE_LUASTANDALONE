local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Lua:LNK_Settings!RunMinimized"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Lua:LastFolderCount!0"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "InArchiveFile"
    L0_0 = L0_0(L1_1)
  elseif L0_0 then
    L0_0 = mp
    L0_0 = L0_0.getfilename
    L1_1 = mp
    L1_1 = L1_1.bitor
    L2_2 = mp
    L2_2 = L2_2.FILEPATH_QUERY_FULL
    L3_3 = mp
    L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
    L9_9 = L1_1(L2_2, L3_3)
    L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L1_1(L2_2, L3_3))
    if L0_0 == nil then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = pcall
    L2_2 = mp
    L2_2 = L2_2.GetLnkInfo
    L2_2 = L1_1(L2_2)
    if L1_1 == false or L2_2 == nil then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = L2_2.Arguments
    L3_3 = L3_3 or ""
    L4_4 = L2_2.BasePath
    L4_4 = L4_4 or ""
    L5_5 = L2_2.RelativePath
    L5_5 = L5_5 or ""
    L6_6 = L2_2.IconLocation
    L6_6 = L6_6 or ""
    L7_7 = L2_2.IconIndex
    L7_7 = L7_7 or ""
    if (L3_3 ~= "" or L5_5 ~= "") and (L7_7 ~= "" or L6_6 ~= "") then
      L8_8 = MpCommon
      L8_8 = L8_8.GetMountedFileBackingFilePath
      L9_9 = L0_0
      L8_8 = L8_8(L9_9)
      L8_8 = L8_8 or ""
      L9_9 = string
      L9_9 = L9_9.format
      L9_9 = L9_9("path=%s;iconIndex=%s;iconLocation=%s;args=%s;relativePath=%s;absolutePath=%s;backing=%s", L0_0, L7_7, L6_6, L3_3, L5_5, L4_4, L8_8)
      mp.set_mpattribute(string.format("MpInternal_researchdata=LnkData=%s", L9_9))
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
