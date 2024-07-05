local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.ContextualExpandEnvironmentVariables
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.utf8p1
L5_5 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L1_1(L2_2))
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.ExpandEnvironmentVariables
L2_2 = "%programfiles(x86)%"
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.ExpandEnvironmentVariables
L3_3 = "%programfiles%"
L2_2 = L2_2(L3_3)
if L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L4_4 = L0_0
L5_5 = L1_1
L5_5 = L5_5 .. "\\microsoft office\\office..\\outlook.exe"
L3_3 = L3_3(L4_4, L5_5)
if L3_3 == nil then
  L3_3 = string
  L3_3 = L3_3.find
  L4_4 = L0_0
  L5_5 = L1_1
  L5_5 = L5_5 .. "\\microsoft office\\root\\office..\\outlook.exe"
  L3_3 = L3_3(L4_4, L5_5)
  if L3_3 == nil then
    L3_3 = string
    L3_3 = L3_3.find
    L4_4 = L0_0
    L5_5 = L1_1
    L5_5 = L5_5 .. "\\windowsapps\\[^\\]+\\office..\\outlook.exe"
    L3_3 = L3_3(L4_4, L5_5)
    if L3_3 == nil then
      L3_3 = string
      L3_3 = L3_3.find
      L4_4 = L0_0
      L5_5 = L2_2
      L5_5 = L5_5 .. "\\microsoft office\\office..\\outlook.exe"
      L3_3 = L3_3(L4_4, L5_5)
      if L3_3 == nil then
        L3_3 = string
        L3_3 = L3_3.find
        L4_4 = L0_0
        L5_5 = L2_2
        L5_5 = L5_5 .. "\\microsoft office\\root\\office..\\outlook.exe"
        L3_3 = L3_3(L4_4, L5_5)
        if L3_3 == nil then
          L3_3 = string
          L3_3 = L3_3.find
          L4_4 = L0_0
          L5_5 = L2_2
          L5_5 = L5_5 .. "\\windowsapps\\[^\\]+\\office..\\outlook.exe"
          L3_3 = L3_3(L4_4, L5_5)
          if L3_3 == nil then
            L3_3 = mp
            L3_3 = L3_3.CLEAN
            return L3_3
          end
        end
      end
    end
  end
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = mp
L4_4 = L4_4.ContextualExpandEnvironmentVariables
L5_5 = this_sigattrlog
L5_5 = L5_5[2]
L5_5 = L5_5.utf8p2
L5_5 = L4_4(L5_5)
L3_3 = L3_3(L4_4, L5_5, L4_4(L5_5))
if L3_3 == nil or L3_3 == "" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.find
L5_5 = L3_3
L4_4 = L4_4(L5_5, "\\?rundll32%.exe\"?%s+\"?.*shell32%.dll\"?%s*,%s*control_rundll%s+\"?.*srchadmin.dll\"?")
if L4_4 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.lower
L5_5 = mp
L5_5 = L5_5.ContextualExpandEnvironmentVariables
L5_5 = L5_5(this_sigattrlog[3].utf8p1)
L4_4 = L4_4(L5_5, L5_5(this_sigattrlog[3].utf8p1))
if L4_4 == nil or L4_4 == "" then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = MpCommon
L5_5 = L5_5.ExpandEnvironmentVariables
L5_5 = L5_5("%windir%")
if L5_5 == nil or L5_5 == "" then
  return mp.CLEAN
end
if string.find(L4_4, L5_5 .. "\\system32\\srchadmin.dll", 1, true) ~= nil then
  return mp.CLEAN
end
if string.find(L4_4, L5_5 .. "\\syswow64\\srchadmin.dll", 1, true) ~= nil then
  return mp.CLEAN
end
if string.find(L4_4, L5_5 .. "\\winsxs\\amd64_[^\\]+\\srchadmin.dll") ~= nil then
  return mp.CLEAN
end
if string.find(L4_4, L5_5 .. "\\winsxs\\wow64_[^\\]+\\srchadmin.dll") ~= nil then
  return mp.CLEAN
end
return mp.INFECTED
