local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = 29
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = pevars
L2_2 = L2_2.sigaddr
L2_2 = L2_2 + L0_0
L3_3 = 96
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.byte
L3_3 = L1_1
L4_4 = 2
L2_2 = L2_2(L3_3, L4_4)
L2_2 = L2_2 + 1
L3_3 = #L1_1
if L2_2 > L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.byte
L4_4 = L1_1
L5_5 = L2_2
L3_3 = L3_3(L4_4, L5_5)
if L3_3 ~= 116 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.byte
L4_4 = L1_1
L5_5 = L2_2 + 1
L3_3 = L3_3(L4_4, L5_5)
L3_3 = L3_3 + 2
L3_3 = L3_3 + L2_2
L4_4 = #L1_1
if L3_3 > L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.byte
L5_5 = L1_1
L6_6 = L3_3
L4_4 = L4_4(L5_5, L6_6)
if L4_4 ~= 232 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = L2_2 + 2
L5_5 = 0
L6_6 = false
while true do
  L7_7 = #L1_1
  if L4_4 < L7_7 then
    L7_7 = string
    L7_7 = L7_7.byte
    L8_8 = L1_1
    L9_9 = L4_4
    L7_7 = L7_7(L8_8, L9_9)
    L8_8 = false
    if L7_7 == 131 then
      L9_9 = string
      L9_9 = L9_9.byte
      L9_9 = L9_9(L1_1, L4_4 + 1)
      if L9_9 == 248 then
        L4_4 = L4_4 + 3
      end
    elseif L7_7 == 61 then
      L4_4 = L4_4 + 5
    elseif L7_7 == 195 then
      L8_8 = true
      L4_4 = L4_4 + 1
    elseif L7_7 == 0 then
      L8_8 = true
      L4_4 = L4_4 + 2
    elseif L7_7 == 15 then
      L9_9 = string
      L9_9 = L9_9.byte
      L9_9 = L9_9(L1_1, L4_4 + 1)
      if L9_9 == 132 then
        L4_4 = L4_4 + 6
      end
    elseif L7_7 == 116 then
      L9_9 = string
      L9_9 = L9_9.byte
      L9_9 = L9_9(L1_1, L4_4 + 1)
      L4_4 = L4_4 + 2
      if L3_3 ~= L9_9 + L4_4 then
        L5_5 = L5_5 + 1
      end
      if L5_5 == 2 then
        return mp.CLEAN
      end
    elseif L7_7 == 204 then
      L9_9 = string
      L9_9 = L9_9.format
      L9_9 = L9_9("\235%s", string.char(L3_3 - 3 + 16))
      pe.mmap_patch_va(pevars.sigaddr + L0_0 - 16, L9_9)
      return mp.LOWFI
    else
      L9_9 = mp
      L9_9 = L9_9.CLEAN
      return L9_9
    end
    if L6_6 == true and L8_8 == false then
      L9_9 = mp
      L9_9 = L9_9.CLEAN
      return L9_9
    end
  end
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
