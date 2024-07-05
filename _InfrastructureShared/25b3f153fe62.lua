local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = MpCommon
L0_0 = L0_0.PathToWin32Path
L1_1 = bm
L1_1 = L1_1.get_imagepath
L12_12 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L1_1())
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = bm
L2_2 = L2_2.get_connection_string
L2_2 = L2_2()
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = tonumber
L4_4 = string
L4_4 = L4_4.match
L5_5 = L2_2
L6_6 = "DestPort=(%d+);"
L12_12 = L4_4(L5_5, L6_6)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L4_4(L5_5, L6_6))
if L3_3 ~= 25 and L3_3 ~= 465 and L3_3 ~= 587 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L5_5 = L1_1
L4_4 = L1_1.match
L6_6 = "(.+\\)([^\\]+)(%.%l%l%l)$"
L6_6 = L4_4(L5_5, L6_6)
if L4_4 == nil then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
if L5_5 == nil then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
if L6_6 == nil or L6_6 ~= ".exe" and L6_6 ~= ".scr" then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = string
L7_7 = L7_7.lower
L8_8 = MpCommon
L8_8 = L8_8.ExpandEnvironmentVariables
L9_9 = "%WINDIR%\\"
L12_12 = L8_8(L9_9)
L7_7 = L7_7(L8_8, L9_9, L10_10, L11_11, L12_12, L8_8(L9_9))
if L7_7 ~= L4_4 then
  L8_8 = L7_7
  L9_9 = "\\system32\\"
  L8_8 = L8_8 .. L9_9
  if L8_8 ~= L4_4 then
    L8_8 = L7_7
    L9_9 = "\\syswow64\\"
    L8_8 = L8_8 .. L9_9
  end
elseif L8_8 == L4_4 then
  L8_8 = mp
  L8_8 = L8_8.INFECTED
  return L8_8
end
L9_9 = L1_1
L8_8 = L1_1.match
L10_10 = "(.+\\)(.+\\)([^\\]+%.%l%l%l)$"
L10_10 = L8_8(L9_9, L10_10)
if L8_8 == nil or L9_9 == nil then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
if L9_9 ~= "temp\\" and L9_9 ~= "temporary\\" and L9_9 ~= "temporary files\\" then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L12_12 = L8_8
L11_11 = L8_8.find
L11_11 = L11_11(L12_12, L7_7, 1, true)
if L11_11 then
  L11_11 = mp
  L11_11 = L11_11.INFECTED
  return L11_11
end
L11_11 = string
L11_11 = L11_11.lower
L12_12 = mp
L12_12 = L12_12.ContextualExpandEnvironmentVariables
L12_12 = L12_12("%USERPROFILE%")
L11_11 = L11_11(L12_12, L12_12("%USERPROFILE%"))
if L11_11 == nil then
  L12_12 = mp
  L12_12 = L12_12.CLEAN
  return L12_12
end
L12_12 = L11_11.match
L12_12 = L12_12(L11_11, "(%l:\\[^\\]+)\\.+")
if L8_8:find(L12_12, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
