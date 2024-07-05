local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L0_0 = L3_3[2]
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L0_0 = L3_3[3]
  else
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L3_3 = isnull
L4_4 = L0_0.utf8p1
L3_3 = L3_3(L4_4)
if not L3_3 then
  L3_3 = isnull
  L4_4 = L0_0.utf8p2
  L3_3 = L3_3(L4_4)
elseif L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = bm
L3_3 = L3_3.get_current_process_startup_info
L3_3 = L3_3()
L4_4 = isnull
L5_5 = L3_3
L4_4 = L4_4(L5_5)
if not L4_4 then
  L4_4 = isnull
  L5_5 = L3_3.ppid
  L4_4 = L4_4(L5_5)
elseif L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.match
L5_5 = L0_0.utf8p1
L6_6 = "imagename:(.+);targetprocessppid:(%d+):(%d+)$"
L6_6 = L4_4(L5_5, L6_6)
L7_7 = string
L7_7 = L7_7.match
L8_8 = L0_0.utf8p2
L9_9 = "vmbaseaddress:(.+);[a-z]-regionsize:(%d+);"
L8_8 = L7_7(L8_8, L9_9)
L9_9 = isnull
L9_9 = L9_9(L10_10)
if not L9_9 then
  L9_9 = isnull
  L9_9 = L9_9(L10_10)
  if not L9_9 then
    L9_9 = isnull
    L9_9 = L9_9(L10_10)
    if not L9_9 then
      L9_9 = isnull
      L9_9 = L9_9(L10_10)
      if not L9_9 then
        L9_9 = isnull
        L9_9 = L9_9(L10_10)
      end
    end
  end
elseif L9_9 then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = string
L9_9 = L9_9.format
L9_9 = L9_9(L10_10, L11_11, L12_12)
if L10_10 == 0 then
  return L10_10
end
for L13_13 = L10_10.SIGATTR_LOG_SZ, 1, -1 do
  if not L1_1 or not L2_2 then
    L15_15 = isnull
    L16_16 = L14_14.attribute
    L15_15 = L15_15(L16_16)
    if not L15_15 then
      L15_15 = isnull
      L16_16 = L14_14.utf8p1
      L15_15 = L15_15(L16_16)
      if not L15_15 then
        L15_15 = L14_14.attribute
        if L15_15 == 16427 then
          L15_15 = isnull
          L16_16 = L14_14.np2
          L15_15 = L15_15(L16_16)
          if not L15_15 then
            L15_15 = L14_14.np2
            if L15_15 >= 2031616 then
              L15_15 = string
              L15_15 = L15_15.match
              L16_16 = L14_14.utf8p1
              L17_17 = "^..*\\(.+)$"
              L15_15 = L15_15(L16_16, L17_17)
              L16_16 = isnull
              L17_17 = L15_15
              L16_16 = L16_16(L17_17)
              if not L16_16 and L4_4 == L15_15 then
                L1_1 = true
              end
            end
          end
        else
          L15_15 = L14_14.attribute
          if L15_15 == 16497 then
            L15_15 = isnull
            L16_16 = L14_14.utf8p2
            L15_15 = L15_15(L16_16)
            if not L15_15 then
              L15_15 = string
              L15_15 = L15_15.match
              L16_16 = L14_14.utf8p2
              L17_17 = "TargetPPID:(%d+):(%d+);TargetThreadID:(%d+)$"
              L17_17 = L15_15(L16_16, L17_17)
              if not isnull(L15_15) and not isnull(L16_16) and not isnull(L17_17) and L4_4 == L14_14.utf8p1 and L5_5 == L15_15 and L6_6 == L16_16 then
                L2_2 = L17_17
              end
            end
          end
        end
      end
    end
  end
end
if not L1_1 or not L2_2 then
  return L10_10
end
if not L12_12 then
elseif L12_12 == 0 then
end
for L15_15, L16_16 in L12_12(L13_13) do
  L17_17 = L16_16.ppid
end
if not L10_10 then
  return L12_12
end
L15_15 = L4_4
L16_16 = L5_5
L17_17 = tostring
L17_17 = L17_17(L7_7)
L15_15 = L12_12
L16_16 = bm
L16_16 = L16_16.RelatedStringBMReport
L13_13(L14_14, L15_15, L16_16)
L15_15 = "T1055.012"
L16_16 = "processhollow"
L13_13(L14_14, L15_15, L16_16)
L15_15 = "T1055.012"
L16_16 = "processhollow_target"
L13_13(L14_14, L15_15, L16_16)
L15_15 = string
L15_15 = L15_15.format
L16_16 = "Process Hollow by %s"
L17_17 = L3_3.ppid
L15_15 = L15_15(L16_16, L17_17)
L16_16 = L9_9
L13_13(L14_14, L15_15, L16_16)
L13_13(L14_14)
L15_15 = L9_9
L13_13(L14_14, L15_15)
return L13_13
