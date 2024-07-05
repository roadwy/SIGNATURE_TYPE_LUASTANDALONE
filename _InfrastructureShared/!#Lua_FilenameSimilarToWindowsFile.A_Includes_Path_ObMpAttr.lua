local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
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
L8_8 = L1_1(L2_2, L3_3)
L1_1 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L1_1(L2_2, L3_3))
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
        if not (L2_2 < 3) then
          L2_2 = string
          L2_2 = L2_2.sub
          L3_3 = L0_0
          L4_4 = -17
          L2_2 = L2_2(L3_3, L4_4)
          if L2_2 ~= "\\windows\\system32" then
            L2_2 = string
            L2_2 = L2_2.sub
            L3_3 = L0_0
            L4_4 = -17
            L2_2 = L2_2(L3_3, L4_4)
          end
        end
      end
    end
  end
elseif L2_2 == "\\windows\\syswow64" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = normalize_path
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L3_3 = #L2_2
if L3_3 > 65 then
  L3_3 = string
  L3_3 = L3_3.sub
  L4_4 = L2_2
  L5_5 = 2
  L6_6 = 17
  L3_3 = L3_3(L4_4, L5_5, L6_6)
  if L3_3 ~= ":\\windows\\winsxs" then
    L3_3 = string
    L3_3 = L3_3.sub
    L4_4 = L2_2
    L5_5 = 2
    L6_6 = 20
    L3_3 = L3_3(L4_4, L5_5, L6_6)
    if L3_3 ~= ":\\windows\\servicing" then
      L3_3 = string
      L3_3 = L3_3.sub
      L4_4 = L2_2
      L5_5 = 2
      L6_6 = 31
      L3_3 = L3_3(L4_4, L5_5, L6_6)
      if L3_3 ~= ":\\windows\\softwaredistribution" then
        L3_3 = string
        L3_3 = L3_3.sub
        L4_4 = L2_2
        L5_5 = 2
        L6_6 = 15
        L3_3 = L3_3(L4_4, L5_5, L6_6)
        if L3_3 ~= ":\\windows\\csc\\" then
          L3_3 = string
          L3_3 = L3_3.sub
          L4_4 = L2_2
          L5_5 = 2
          L6_6 = 20
          L3_3 = L3_3(L4_4, L5_5, L6_6)
        end
      end
    end
  end
else
  if L3_3 ~= ":\\windows\\assembly\\" then
    L3_3 = string
    L3_3 = L3_3.sub
    L4_4 = L2_2
    L5_5 = 0
    L6_6 = 2
    L3_3 = L3_3(L4_4, L5_5, L6_6)
    if L3_3 ~= "\\\\" then
      L3_3 = string
      L3_3 = L3_3.sub
      L4_4 = L2_2
      L5_5 = 2
      L6_6 = 16
      L3_3 = L3_3(L4_4, L5_5, L6_6)
    end
end
elseif L3_3 == ":\\program files" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.sub
L4_4 = L1_1
L5_5 = -3
L3_3 = L3_3(L4_4, L5_5)
if L3_3 ~= "exe" and L3_3 ~= "dll" and L3_3 ~= "ocx" and L3_3 ~= "cpl" and L3_3 ~= "com" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = L2_2
L5_5 = "\\"
L6_6 = L1_1
L4_4 = L4_4 .. L5_5 .. L6_6
L5_5 = mp
L5_5 = L5_5.IsKnownFriendlyFile
L6_6 = L4_4
L7_7 = false
L8_8 = false
L5_5 = L5_5(L6_6, L7_7, L8_8)
if L5_5 == true then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.get_mpattribute
L6_6 = "BM_HAS_DIGITALSIGNATURE"
L5_5 = L5_5(L6_6)
if L5_5 then
  L5_5 = mp
  L5_5 = L5_5.IsTrustedFile
  L6_6 = false
  L5_5 = L5_5(L6_6)
  if L5_5 == true then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
end
L5_5 = MpCommon
L5_5 = L5_5.ExpandEnvironmentVariables
L6_6 = "%windir%"
L5_5 = L5_5(L6_6)
if L5_5 ~= nil then
  L6_6 = #L5_5
elseif L6_6 < 4 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = L5_5
L7_7 = "\\system32\\"
L8_8 = L1_1
L6_6 = L6_6 .. L7_7 .. L8_8
L7_7 = sysio
L7_7 = L7_7.IsFileExists
L8_8 = L6_6
L7_7 = L7_7(L8_8)
if L7_7 then
  L7_7 = "Lua:FilenameExistInSystemFolder.A"
  L8_8 = mp
  L8_8 = L8_8.set_mpattribute
  L8_8(L7_7)
  L8_8 = mp
  L8_8 = L8_8.set_mpattribute
  L8_8(L7_7 .. "!" .. L3_3)
  L8_8 = mp
  L8_8 = L8_8.set_mpattribute
  L8_8(L7_7 .. "!" .. L1_1)
  L8_8 = mp
  L8_8 = L8_8.INFECTED
  return L8_8
end
L7_7 = L5_5
L8_8 = "\\syswow64\\"
L7_7 = L7_7 .. L8_8 .. L1_1
L8_8 = sysio
L8_8 = L8_8.IsFileExists
L8_8 = L8_8(L7_7)
if L8_8 then
  L8_8 = "Lua:FilenameExistInSyswowFolder.A"
  mp.set_mpattribute(L8_8)
  mp.set_mpattribute(L8_8 .. "!" .. L3_3)
  mp.set_mpattribute(L8_8 .. "!" .. L1_1)
  return mp.INFECTED
end
L8_8 = mp
L8_8 = L8_8.CLEAN
return L8_8
