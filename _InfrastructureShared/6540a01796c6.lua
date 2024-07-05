local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
if L1_1 >= 3 then
  L0_0 = 3
end
for L4_4 = 1, L0_0 do
  L5_5 = mp
  L5_5 = L5_5.SIGATTR_LOG_SZ
  L5_5 = L5_5 - L4_4
  L5_5 = L5_5 + 1
  L6_6 = sigattr_tail
  L6_6 = L6_6[L5_5]
  L6_6 = L6_6.matched
  if L6_6 then
    L6_6 = sigattr_tail
    L6_6 = L6_6[L5_5]
    L6_6 = L6_6.attribute
    if L6_6 == 12312 then
      L6_6 = sigattr_tail
      L6_6 = L6_6[L5_5]
      L6_6 = L6_6.p1
      L7_7 = string
      L7_7 = L7_7.len
      L8_8 = L6_6
      L7_7 = L7_7(L8_8)
      if L7_7 == 71 then
        L8_8 = L6_6
        L7_7 = L6_6.sub
        L7_7 = L7_7(L8_8, L9_9)
        if L7_7 == ".exe" then
          L7_7 = string
          L7_7 = L7_7.byte
          L8_8 = L6_6
          L7_7 = L7_7(L8_8, L9_9)
          if L7_7 == 92 then
            L8_8 = L6_6
            L7_7 = L6_6.sub
            L7_7 = L7_7(L8_8, L9_9, L10_10)
            if L7_7 ~= "\\Application Data" then
              break
            end
            L8_8 = L6_6
            L7_7 = L6_6.sub
            L7_7 = L7_7(L8_8, L9_9)
            L8_8 = string
            L8_8 = L8_8.byte
            L8_8 = L8_8(L9_9)
            if not (L8_8 < 65) then
              L8_8 = string
              L8_8 = L8_8.byte
              L8_8 = L8_8(L9_9)
            end
          end
        end
      elseif L8_8 > 90 then
        break
      end
      L8_8 = string
      L8_8 = L8_8.len
      L8_8 = L8_8(L9_9)
      for L12_12 = 2, L8_8 - 4 do
        if string.byte(L7_7, L12_12) < 97 or string.byte(L7_7, L12_12) > 122 then
          break
        end
      end
      L9_9(L10_10)
      return L9_9
    end
  end
end
return L1_1
