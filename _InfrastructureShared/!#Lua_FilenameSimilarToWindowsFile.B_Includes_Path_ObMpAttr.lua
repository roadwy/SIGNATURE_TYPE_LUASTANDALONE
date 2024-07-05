local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FNAME
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_PATH
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L9_9 = L1_1(L2_2, L3_3)
L1_1 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L1_1(L2_2, L3_3))
if L1_1 ~= nil then
  L2_2 = #L1_1
  if not (L2_2 <= 5) then
    L2_2 = #L1_1
    if not (L2_2 > 48) then
      L2_2 = string
      L2_2 = L2_2.sub
      L3_3 = L1_1
      L4_4 = -4
      L5_5 = -4
      L2_2 = L2_2(L3_3, L4_4, L5_5)
      if L2_2 == "." and L0_0 ~= nil then
        L2_2 = #L0_0
      end
    end
  end
elseif L2_2 < 3 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L0_0
L4_4 = -17
L2_2 = L2_2(L3_3, L4_4)
L3_3 = nil
if L2_2 == "\\windows\\system32" then
  L3_3 = "syswow64"
elseif L2_2 == "\\windows\\syswow64" then
  L3_3 = "system32"
else
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.sub
L5_5 = L1_1
L6_6 = -3
L4_4 = L4_4(L5_5, L6_6)
if L4_4 ~= "exe" and L4_4 ~= "dll" and L4_4 ~= "ocx" and L4_4 ~= "cpl" and L4_4 ~= "com" then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = normalize_path
L6_6 = L0_0
L5_5 = L5_5(L6_6)
L6_6 = L5_5
L7_7 = "\\"
L8_8 = L1_1
L6_6 = L6_6 .. L7_7 .. L8_8
L7_7 = mp
L7_7 = L7_7.IsKnownFriendlyFile
L8_8 = L6_6
L9_9 = false
L7_7 = L7_7(L8_8, L9_9, false)
if L7_7 == true then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = mp
L7_7 = L7_7.get_mpattribute
L8_8 = "BM_HAS_DIGITALSIGNATURE"
L7_7 = L7_7(L8_8)
if L7_7 then
  L7_7 = mp
  L7_7 = L7_7.IsTrustedFile
  L8_8 = false
  L7_7 = L7_7(L8_8)
  if L7_7 == true then
    L7_7 = mp
    L7_7 = L7_7.CLEAN
    return L7_7
  end
end
L7_7 = MpCommon
L7_7 = L7_7.ExpandEnvironmentVariables
L8_8 = "%windir%"
L7_7 = L7_7(L8_8)
if L7_7 ~= nil then
  L8_8 = #L7_7
elseif L8_8 < 4 then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = L7_7
L9_9 = "\\"
L8_8 = L8_8 .. L9_9 .. L3_3 .. "\\" .. L1_1
L9_9 = sysio
L9_9 = L9_9.IsFileExists
L9_9 = L9_9(L8_8)
if L9_9 then
  L9_9 = "Lua:FilenameExistIn"
  L9_9 = L9_9 .. L3_3 .. "Folder.B"
  mp.set_mpattribute(L9_9)
  mp.set_mpattribute(L9_9 .. "!" .. L4_4)
  mp.set_mpattribute(L9_9 .. "!" .. L1_1)
  return mp.INFECTED
end
L9_9 = mp
L9_9 = L9_9.CLEAN
return L9_9
