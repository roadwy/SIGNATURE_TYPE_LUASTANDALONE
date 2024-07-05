local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_HAS_MOTW_ADS
L1_1 = L1_1(L2_2)
if L1_1 == true then
  L1_1 = mp
  L1_1 = L1_1.GetMOTWHostUrl
  L1_1 = L1_1()
  L0_0 = L1_1
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L2_2 = L0_0
L1_1 = L0_0.lower
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L2_2 = L0_0
L1_1 = L0_0.find
L3_3 = "about:"
L4_4 = 1
L5_5 = true
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
  L1_1 = L1_1(L2_2)
  if L1_1 == nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L3_3 = L1_1
  L2_2 = L1_1.lower
  L2_2 = L2_2(L3_3)
  L1_1 = L2_2
  L2_2 = {
    L3_3,
    L4_4,
    L5_5,
    L6_6,
    L7_7
  }
  L3_3 = "chrome.exe"
  L4_4 = "firefox.exe"
  L5_5 = "opera.exe"
  L6_6 = "msedge.exe"
  L7_7 = "brave.exe"
  L3_3 = contains
  L4_4 = L1_1
  L5_5 = L2_2
  L3_3 = L3_3(L4_4, L5_5)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.getfilename
    L4_4 = mp
    L4_4 = L4_4.bitor
    L5_5 = mp
    L5_5 = L5_5.FILEPATH_QUERY_FULL
    L6_6 = mp
    L6_6 = L6_6.FILEPATH_QUERY_LOWERCASE
    L8_8 = L4_4(L5_5, L6_6)
    L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L4_4(L5_5, L6_6))
    if L3_3 == nil then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = mp
    L4_4 = L4_4.get_contextdata
    L5_5 = mp
    L5_5 = L5_5.CONTEXT_DATA_PROCESSDEVICEPATH
    L4_4 = L4_4(L5_5)
    L5_5 = mp
    L5_5 = L5_5.get_contextdata
    L6_6 = mp
    L6_6 = L6_6.CONTEXT_DATA_PROCESS_PPID
    L5_5 = L5_5(L6_6)
    L6_6 = MpCommon
    L6_6 = L6_6.PathToWin32Path
    L7_7 = L4_4
    L6_6 = L6_6(L7_7)
    L4_4 = L6_6
    if L4_4 ~= nil and L5_5 ~= nil then
      L7_7 = L4_4
      L6_6 = L4_4.lower
      L6_6 = L6_6(L7_7)
      L4_4 = L6_6
      L6_6 = MpCommon
      L6_6 = L6_6.GetCurrentTimeT
      L6_6 = L6_6()
      L7_7 = "WARCH::ProcessImagePath="
      L8_8 = L4_4
      L7_7 = L7_7 .. L8_8 .. ";pid=" .. L5_5 .. ";timestamp=" .. L6_6 .. ";motw=" .. L0_0
      L8_8 = IsKeyInRollingQueue
      L8_8 = L8_8("CC_filelist", L3_3)
      if not L8_8 then
        L8_8 = 31536000
        AppendToRollingQueue("CC_filelist", L3_3, L7_7, L8_8, 32)
      end
    end
    L6_6 = mp
    L6_6 = L6_6.INFECTED
    return L6_6
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
