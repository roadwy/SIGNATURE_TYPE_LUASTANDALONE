local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.GetLnkInfo
L0_0 = L0_0()
L1_1 = L0_0.Arguments
L2_2 = L0_0.BasePath
L3_3 = {
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  "calc",
  "wscript",
  "cscript",
  "mshta"
}
L4_4 = "odbcconf"
L5_5 = "rundll32"
L6_6 = "regsvr"
L7_7 = "powershell"
if L1_1 ~= nil then
  L4_4 = contains
  L6_6 = L1_1
  L5_5 = L1_1.lower
  L5_5 = L5_5(L6_6)
  L6_6 = L3_3
  L4_4 = L4_4(L5_5, L6_6)
else
  if not L4_4 then
    if L2_2 ~= nil then
      L4_4 = contains
      L6_6 = L2_2
      L5_5 = L2_2.lower
      L5_5 = L5_5(L6_6)
      L6_6 = L3_3
      L4_4 = L4_4(L5_5, L6_6)
    end
end
elseif L4_4 then
  L4_4 = mp
  L4_4 = L4_4.getfilename
  L5_5 = mp
  L5_5 = L5_5.bitor
  L6_6 = mp
  L6_6 = L6_6.bitor
  L7_7 = mp
  L7_7 = L7_7.FILEPATH_QUERY_FNAME
  L6_6 = L6_6(L7_7, mp.FILEPATH_QUERY_PATH)
  L7_7 = mp
  L7_7 = L7_7.FILEPATH_QUERY_LOWERCASE
  L7_7 = L5_5(L6_6, L7_7)
  L5_5 = L4_4(L5_5, L6_6, L7_7, L5_5(L6_6, L7_7))
  if L4_4 ~= nil then
    L6_6 = #L4_4
  elseif L6_6 > 2 or L5_5 == nil then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = L4_4
  L7_7 = "\\"
  L6_6 = L6_6 .. L7_7 .. L5_5
  L7_7 = MpCommon
  L7_7 = L7_7.GetMountedFileBackingFilePath
  L7_7 = L7_7(L6_6)
  if L7_7 == nil then
    return mp.CLEAN
  end
  if IsKeyInRollingQueue("CC_filelist", L7_7) then
    mp.ReportLowfi(L7_7, 818474255)
  end
  return mp.INFECTED
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
