local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
L2_2 = 150000000
L3_3 = bm
L3_3 = L3_3.GetSignatureMatchDuration
L3_3 = L3_3()
if L2_2 < L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = IsProcessExcludedFromRansomwareAnalysis
L4_4 = L4_4()
if L4_4 == true then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = 0
for L8_8 = 1, L0_0 do
  L9_9 = sigattr_tail
  L9_9 = L9_9[L8_8]
  L9_9 = L9_9.attribute
  if L9_9 == 16386 then
    L10_10 = sigattr_tail
    L10_10 = L10_10[L8_8]
    L10_10 = L10_10.utf8p1
    L11_11 = sigattr_tail
    L11_11 = L11_11[L8_8]
    L11_11 = L11_11.utf8p2
    if L10_10 ~= nil and L10_10 ~= "" and L11_11 ~= nil and L11_11 ~= "" and L1_1[L11_11] == nil and isSensitiveFileForLinux(L11_11) then
      L1_1[L11_11] = true
      bm.add_related_file(L11_11)
      bm.add_related_file(L10_10)
      L4_4 = L4_4 + 1
    end
  end
end
if L4_4 >= 10 then
  L5_5()
  L5_5()
  L8_8 = "Impact_SensitiveFileTampering"
  L5_5(L6_6, L7_7, L8_8)
  L8_8 = L5_5
  L9_9 = bm
  L9_9 = L9_9.RelatedStringBMReport
  L6_6(L7_7, L8_8, L9_9)
  L6_6()
  return L6_6
end
return L5_5
