local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L0_0 = this_sigattrlog
L0_0 = L0_0[14]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[15]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[16]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[17]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = this_sigattrlog
        L0_0 = L0_0[18]
        L0_0 = L0_0.matched
        if L0_0 then
          L0_0 = this_sigattrlog
          L0_0 = L0_0[19]
          L0_0 = L0_0.matched
          if L0_0 then
            L0_0 = this_sigattrlog
            L0_0 = L0_0[14]
            L0_0 = L0_0.utf8p1
            L1_1 = this_sigattrlog
            L1_1 = L1_1[15]
            L1_1 = L1_1.utf8p1
            L2_2 = this_sigattrlog
            L2_2 = L2_2[15]
            L2_2 = L2_2.utf8p2
            L3_3 = this_sigattrlog
            L3_3 = L3_3[16]
            L3_3 = L3_3.utf8p1
            L4_4 = this_sigattrlog
            L4_4 = L4_4[17]
            L4_4 = L4_4.utf8p1
            L5_5 = this_sigattrlog
            L5_5 = L5_5[18]
            L5_5 = L5_5.utf8p1
            L6_6 = this_sigattrlog
            L6_6 = L6_6[18]
            L6_6 = L6_6.utf8p2
            L7_7 = this_sigattrlog
            L7_7 = L7_7[19]
            L7_7 = L7_7.utf8p1
            if L0_0 == nil or L1_1 == nil or L2_2 == nil or L3_3 == nil or L4_4 == nil or L5_5 == nil or L6_6 == nil or L7_7 == nil then
              L8_8 = mp
              L8_8 = L8_8.CLEAN
              return L8_8
            end
            if L1_1 ~= L3_3 or L5_5 ~= L7_7 then
              L8_8 = mp
              L8_8 = L8_8.CLEAN
              return L8_8
            end
            L8_8 = string
            L8_8 = L8_8.len
            L9_9 = L0_0
            L8_8 = L8_8(L9_9)
            L9_9 = string
            L9_9 = L9_9.len
            L10_10 = L2_2
            L9_9 = L9_9(L10_10)
            if not (L8_8 < L9_9) then
              L8_8 = string
              L8_8 = L8_8.len
              L9_9 = L4_4
              L8_8 = L8_8(L9_9)
              L9_9 = string
              L9_9 = L9_9.len
              L10_10 = L6_6
              L9_9 = L9_9(L10_10)
            elseif L8_8 < L9_9 then
              L8_8 = mp
              L8_8 = L8_8.CLEAN
              return L8_8
            end
            L8_8 = string
            L8_8 = L8_8.find
            L9_9 = L0_0
            L10_10 = L2_2
            L11_11 = 1
            L12_12 = true
            L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12)
            if L8_8 ~= nil then
              L8_8 = string
              L8_8 = L8_8.find
              L9_9 = L4_4
              L10_10 = L6_6
              L11_11 = 1
              L12_12 = true
              L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12)
            elseif L8_8 == nil then
              L8_8 = mp
              L8_8 = L8_8.CLEAN
              return L8_8
            end
            L8_8 = string
            L8_8 = L8_8.match
            L9_9 = L0_0
            L10_10 = "[^\\]+$"
            L8_8 = L8_8(L9_9, L10_10)
            L9_9 = string
            L9_9 = L9_9.match
            L10_10 = L4_4
            L11_11 = "[^\\]+$"
            L9_9 = L9_9(L10_10, L11_11)
            L10_10 = string
            L10_10 = L10_10.gsub
            L11_11 = L8_8
            L12_12 = "%."
            L13_13 = ""
            L11_11 = L10_10(L11_11, L12_12, L13_13)
            L12_12 = string
            L12_12 = L12_12.gsub
            L13_13 = L9_9
            L14_14 = "%."
            L15_15 = ""
            L13_13 = L12_12(L13_13, L14_14, L15_15)
            if L11_11 < 2 or L13_13 < 2 then
              L14_14 = mp
              L14_14 = L14_14.CLEAN
              return L14_14
            end
            L14_14 = string
            L14_14 = L14_14.match
            L15_15 = L2_2
            L16_16 = "[^.]+$"
            L14_14 = L14_14(L15_15, L16_16)
            L15_15 = string
            L15_15 = L15_15.match
            L16_16 = L6_6
            L15_15 = L15_15(L16_16, "[^.]+$")
            L16_16 = string
            L16_16 = L16_16.match
            L16_16 = L16_16(L0_0, "[^.]+$")
            if L14_14 == nil or L15_15 == nil or L16_16 == nil or string.match(L4_4, "[^.]+$") == nil then
              return mp.CLEAN
            end
            if string.len(L16_16) < 4 or L14_14 == L16_16 or L15_15 == string.match(L4_4, "[^.]+$") then
              return mp.CLEAN
            end
            if L16_16 ~= string.match(L4_4, "[^.]+$") then
              return mp.CLEAN
            end
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
