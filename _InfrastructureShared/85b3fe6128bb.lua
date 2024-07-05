local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L0_0 = {}
L1_1 = {}
L2_2 = {}
L3_3 = {}
L4_4 = {}
L5_5 = {}
L6_6 = {}
L7_7 = {}
L8_8 = "[A-Za-z]"
L9_9 = 2
for L13_13 = 1, L11_11.SIGATTR_LOG_SZ do
  L14_14 = string
  L14_14 = L14_14.lower
  L15_15 = sigattr_head
  L15_15 = L15_15[L13_13]
  L15_15 = L15_15.utf8p1
  L14_14 = L14_14(L15_15)
  L15_15 = sigattr_head
  L15_15 = L15_15[L13_13]
  L15_15 = L15_15.matched
  if L15_15 then
    L15_15 = string
    L15_15 = L15_15.find
    L15_15 = L15_15(L14_14, ":\\", 1, true)
    if L15_15 == 2 then
      L15_15 = string
      L15_15 = L15_15.sub
      L15_15 = L15_15(L14_14, 0, 1)
      if string.len(L15_15) == 1 and string.match(L15_15, L8_8) then
        if sigattr_head[L13_13].attribute == 16384 then
          L0_0[L15_15] = 1
        elseif sigattr_head[L13_13].attribute == 16385 then
          L1_1[L15_15] = 1
        elseif sigattr_head[L13_13].attribute == 16386 then
          L2_2[L15_15] = 1
        elseif sigattr_head[L13_13].attribute == 16387 then
          L3_3[L15_15] = 1
        end
      end
    else
      L15_15 = string
      L15_15 = L15_15.find
      L15_15 = L15_15(L14_14, "\\\\", 1, true)
      if L15_15 == 0 then
        L15_15 = nil
        if string.find(L14_14, "\\", 3, true) then
          L15_15 = string.sub(L14_14, 2, string.find(L14_14, "\\", 3, true) - 2)
        else
          L15_15 = string.sub(L14_14, 2)
        end
        if 1 <= string.len(L15_15) and string.len(L15_15) <= 255 then
          if sigattr_head[L13_13].attribute == 16384 then
            L4_4[L15_15] = 1
          elseif sigattr_head[L13_13].attribute == 16385 then
            L5_5[L15_15] = 1
          elseif sigattr_head[L13_13].attribute == 16386 then
            L6_6[L15_15] = 1
          elseif sigattr_head[L13_13].attribute == 16387 then
            L7_7[L15_15] = 1
          end
        end
      end
    end
  end
end
if not (L9_9 <= L10_10) then
elseif L9_9 <= L10_10 then
  return L10_10
end
return L10_10
