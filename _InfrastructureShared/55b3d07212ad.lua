local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = string
L0_0 = L0_0.lower
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p2
L0_0 = L0_0(L1_1)
L2_2 = L0_0
L1_1 = L0_0.find
L3_3 = "nvcpl.dll"
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L2_2 = L0_0
L1_1 = L0_0.find
L3_3 = "cceraser.dll"
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
L2_2 = L1_1.integrity_level
L3_3 = MpCommon
L3_3 = L3_3.SECURITY_MANDATORY_MEDIUM_RID
if L2_2 > L3_3 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L0_0
L2_2 = L0_0.find
L4_4 = "rundll32.exe"
L3_3 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L5_5 = L0_0
  L4_4 = L0_0.find
  L6_6 = "rundll32"
  L7_7 = 1
  L8_8 = true
  L5_5 = L4_4(L5_5, L6_6, L7_7, L8_8)
  L3_3 = L5_5
  L2_2 = L4_4
end
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.sub
L5_5 = L0_0
L6_6 = string
L6_6 = L6_6.len
L7_7 = L0_0
L6_6 = L6_6(L7_7)
L6_6 = L3_3 - L6_6
L4_4 = L4_4(L5_5, L6_6)
if L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.lower
L6_6 = MpCommon
L6_6 = L6_6.PathToWin32Path
L7_7 = bm
L7_7 = L7_7.get_imagepath
L11_11 = L7_7()
L11_11 = L6_6(L7_7, L8_8, L9_9, L10_10, L11_11, L7_7())
L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L6_6(L7_7, L8_8, L9_9, L10_10, L11_11, L7_7()))
L6_6 = "|"
L8_8 = L5_5
L7_7 = L5_5.match
L9_9 = "(%w+%.exe)$"
L7_7 = L7_7(L8_8, L9_9)
L8_8 = "|"
L6_6 = L6_6 .. L7_7 .. L8_8
L7_7 = "|nvvsvc.exe|salnst.exe|"
L9_9 = L7_7
L8_8 = L7_7.find
L10_10 = L6_6
L11_11 = 1
L8_8 = L8_8(L9_9, L10_10, L11_11, true)
if L8_8 ~= nil then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L9_9 = L4_4
L8_8 = L4_4.match
L10_10 = "([^,]+)"
L8_8 = L8_8(L9_9, L10_10)
if L8_8 == nil then
  L8_8 = L4_4
end
L10_10 = L8_8
L9_9 = L8_8.gsub
L11_11 = "%s*(.-)%s*$"
L9_9 = L9_9(L10_10, L11_11, "%1")
L11_11 = L9_9
L10_10 = L9_9.gsub
L10_10 = L10_10(L11_11, "\"", "")
L11_11 = L10_10.find
L11_11 = L11_11(L10_10, ":\\", 1, true)
if L11_11 == nil then
  if L5_5 == nil then
    L11_11 = mp
    L11_11 = L11_11.CLEAN
    return L11_11
  end
  L11_11 = L5_5.match
  L11_11 = L11_11(L5_5, "(.+)\\[^\\]+$")
  while L10_10:find("..\\", 1, true) ~= nil and 16 > 0 do
    if L10_10:find("..\\", 1, true) ~= nil then
      L11_11 = L11_11:match("(.+)\\[^\\]+$")
      L10_10 = L10_10:gsub("^%.%.\\", "")
    end
  end
  if L10_10:find(".\\", 1, true) ~= nil then
    L10_10 = L10_10:gsub("%.\\", "")
  end
  if L11_11 == nil then
    return mp.INFECTED
  end
  if L10_10 == nil then
    return mp.INFECTED
  end
  L10_10 = L11_11 .. "\\" .. L10_10
end
L11_11 = mp
L11_11 = L11_11.ReportLowfi
L11_11(L10_10, 1784912360)
L11_11 = mp
L11_11 = L11_11.INFECTED
return L11_11
