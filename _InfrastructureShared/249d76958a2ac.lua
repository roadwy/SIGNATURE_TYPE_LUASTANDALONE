local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.GetImagePathFromPid
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = MpCommon
L3_3 = L3_3.GetOriginalFileName
L4_4 = L2_2
L3_3 = L3_3(L4_4)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L3_3 == "powershell.exe" then
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = string
  L5_5 = L5_5.lower
  L6_6 = L2_2
  L5_5 = L5_5(L6_6)
  L6_6 = "powershell.exe"
  L4_4 = L4_4(L5_5, L6_6, 1, true)
  if not L4_4 then
    L4_4 = mp
    L4_4 = L4_4.GetProcessCommandLine
    L5_5 = L0_0
    L4_4 = L4_4(L5_5)
    if L4_4 == nil then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = string
    L5_5 = L5_5.match
    L6_6 = L4_4
    L5_5 = L5_5(L6_6, " -[eE][nN][cC] ([a-zA-Z0-9%+/]+=-)")
    if L5_5 == nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = string
    L6_6 = L6_6.len
    L6_6 = L6_6(L5_5)
    if L6_6 >= 512 then
      L6_6 = string
      L6_6 = L6_6.sub
      L6_6 = L6_6(L5_5, 1, 512)
      L5_5 = L6_6
    else
      L6_6 = string
      L6_6 = L6_6.sub
      L6_6 = L6_6(L5_5, 1, 256)
      L5_5 = L6_6
    end
    L6_6 = MpCommon
    L6_6 = L6_6.Base64Decode
    L6_6 = L6_6(L5_5)
    if L6_6 == nil then
      return mp.CLEAN
    end
    L6_6 = string.gsub(L6_6, "%z", "")
    L6_6 = string.lower(string.gsub(L6_6, " ", ""))
    if string.find(L6_6, "start-bitstransfer", 1, true) or string.find(L6_6, ").downloadfile(", 1, true) or string.find(L6_6, "invoke-webrequest", 1, true) or string.find(L6_6, "-threatiddefaultaction_actions", 1, true) or string.find(L6_6, "-exclusionpath", 1, true) or string.find(L6_6, "-exclusionprocess", 1, true) or string.find(L6_6, "::getcurrentprocess().mainmodule", 1, true) then
      return mp.INFECTED
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
