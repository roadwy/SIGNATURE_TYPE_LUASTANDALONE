local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 16 or L0_0 > 3145728 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILE_AGE
L1_1 = L1_1(L2_2)
if L1_1 > 300 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
L2_2.ntrunkey = true
L2_2.runkey = true
L2_2.runonce = true
L2_2.runonceex = true
L3_3 = mp
L3_3 = L3_3.GetResmgrBasePlugin
L3_3 = L3_3()
if L3_3 == nil then
  L4_4 = ""
else
  L4_4 = L4_4 or L3_3
end
L5_5 = L4_4
L4_4 = L4_4.lower
L4_4 = L4_4(L5_5)
L3_3 = L4_4
L4_4 = L2_2[L3_3]
if L4_4 ~= true then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = MpCommon
L4_4 = L4_4.PathToWin32Path
L5_5 = mp
L5_5 = L5_5.get_contextdata
L6_6 = mp
L6_6 = L6_6.CONTEXT_DATA_FILEPATH
L7_7 = L5_5(L6_6)
L4_4 = L4_4(L5_5, L6_6, L7_7, L5_5(L6_6))
if L4_4 == nil then
  L5_5 = ""
else
  L5_5 = L5_5 or L4_4
end
L6_6 = L5_5
L5_5 = L5_5.lower
L5_5 = L5_5(L6_6)
L4_4 = L5_5
L5_5 = MpCommon
L5_5 = L5_5.ExpandEnvironmentVariables
L6_6 = "%programfiles%"
L5_5 = L5_5(L6_6)
if L5_5 == nil then
  L6_6 = ""
else
  L6_6 = L6_6 or L5_5
end
L7_7 = L6_6
L6_6 = L6_6.lower
L6_6 = L6_6(L7_7)
L5_5 = L6_6
L6_6 = MpCommon
L6_6 = L6_6.ExpandEnvironmentVariables
L7_7 = "%programfiles(x86)%"
L6_6 = L6_6(L7_7)
if L6_6 == nil then
  L7_7 = ""
else
  L7_7 = L7_7 or L6_6
end
L7_7 = L7_7.lower
L7_7 = L7_7(L7_7)
L6_6 = L7_7
L7_7 = L4_4.find
L7_7 = L7_7(L4_4, L5_5, 1, true)
if L7_7 == nil then
  L7_7 = L4_4.find
  L7_7 = L7_7(L4_4, L6_6, 1, true)
elseif L7_7 ~= nil then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = mp
L7_7 = L7_7.get_contextdata
L7_7 = L7_7(mp.CONTEXT_DATA_FILENAME)
L7_7 = (L7_7 == nil and "" or L7_7):lower()
if not sysio.IsFileExists(L4_4 .. "\\" .. L7_7) then
  return mp.CLEAN
end
return mp.INFECTED
