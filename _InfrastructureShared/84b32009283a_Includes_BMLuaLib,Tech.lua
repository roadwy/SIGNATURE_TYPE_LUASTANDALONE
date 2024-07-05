local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = 0
L2_2 = {}
L3_3 = IsProcessExcludedFromRansomwareAnalysis
L3_3 = L3_3()
if L3_3 == true then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = bm
L3_3 = L3_3.get_current_process_startup_info
L3_3 = L3_3()
if L3_3 ~= nil then
  L4_4 = L3_3.ppid
  if L4_4 ~= nil then
    L4_4 = L3_3.command_line
    if L4_4 ~= nil then
      L4_4 = L3_3.command_line
    end
  end
elseif L4_4 == "" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.find
L8_8 = true
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
if not L4_4 then
  L4_4 = string
  L4_4 = L4_4.find
  L8_8 = true
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
  if not L4_4 then
    L4_4 = string
    L4_4 = L4_4.find
    L8_8 = true
    L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
  end
elseif L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {L5_5, L6_6}
L8_8 = "zypper -qn refresh"
L8_8 = 3
if L5_5 == true then
  return L5_5
end
gpgCommandLineSanityCheck = L5_5
for L8_8 = 1, L0_0 do
  L9_9 = sigattr_tail
  L9_9 = L9_9[L8_8]
  L9_9 = L9_9.attribute
  L10_10 = sigattr_tail
  L10_10 = L10_10[L8_8]
  L10_10 = L10_10.utf8p1
  L11_11 = sigattr_tail
  L11_11 = L11_11[L8_8]
  L11_11 = L11_11.utf8p2
  if L9_9 == 16400 and L10_10 ~= nil and L11_11 ~= nil and L2_2[L11_11] == nil then
    L2_2[L11_11] = true
    if gpgCommandLineSanityCheck(L10_10, L11_11) == true then
      L1_1 = L1_1 + 1
    end
  end
end
if L1_1 >= 10 then
  L5_5()
  L5_5()
  L8_8 = "Impact_GpgEncryption"
  L5_5(L6_6, L7_7, L8_8)
  L8_8 = L5_5
  L9_9 = bm
  L9_9 = L9_9.RelatedStringBMReport
  L6_6(L7_7, L8_8, L9_9)
  L6_6()
  return L6_6
end
return L5_5
