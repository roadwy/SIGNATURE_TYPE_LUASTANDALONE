local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "lua_codepatch_obfuscatorALG"
L0_0 = L0_0(L1_1)
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 12
L2_2 = 6
L0_0 = L0_0(L1_1, L2_2)
L1_1, L2_2, L3_3 = nil, nil, nil
L4_4 = string
L4_4 = L4_4.byte
L5_5 = L0_0
L6_6 = 1
L4_4 = L4_4(L5_5, L6_6)
if L4_4 == 116 then
  L4_4 = string
  L4_4 = L4_4.byte
  L5_5 = L0_0
  L6_6 = 2
  L4_4 = L4_4(L5_5, L6_6)
  L1_1 = L4_4
  L4_4 = pevars
  L4_4 = L4_4.sigaddr
  L2_2 = L4_4 + 14
else
  L4_4 = mp
  L4_4 = L4_4.readu_u32
  L5_5 = L0_0
  L6_6 = 3
  L4_4 = L4_4(L5_5, L6_6)
  L1_1 = L4_4
  L4_4 = pevars
  L4_4 = L4_4.sigaddr
  L2_2 = L4_4 + 18
end
L4_4 = mp
L4_4 = L4_4.bitand
L5_5 = L1_1
L6_6 = 16777216
L4_4 = L4_4(L5_5, L6_6)
if L4_4 ~= 0 then
  L4_4 = mp
  L4_4 = L4_4.bitxor
  L5_5 = L1_1
  L6_6 = 4294967295
  L4_4 = L4_4(L5_5, L6_6)
  L4_4 = L2_2 - L4_4
  L3_3 = L4_4 - 1
else
  L3_3 = L1_1 + L2_2
end
L4_4 = 0
L5_5 = pe
L5_5 = L5_5.mmap_va
L6_6 = L3_3
L7_7 = 9
L5_5 = L5_5(L6_6, L7_7)
while true do
  L6_6 = string
  L6_6 = L6_6.byte
  L7_7 = L5_5
  L8_8 = 1
  L6_6 = L6_6(L7_7, L8_8)
  if L6_6 == 106 then
    L6_6 = mp
    L6_6 = L6_6.readu_u32
    L7_7 = L5_5
    L8_8 = 6
    L6_6 = L6_6(L7_7, L8_8)
    L7_7 = mp
    L7_7 = L7_7.bsplit
    L8_8 = L6_6
    L9_9 = 8
    L10_10 = L7_7(L8_8, L9_9)
    L11_11 = "\129}\f"
    L12_12 = string
    L12_12 = L12_12.char
    L13_13 = L7_7
    L12_12 = L12_12(L13_13, L8_8, L9_9, L10_10)
    L13_13 = "\144\003\004\005t\144\001\001\015\132\144\001\004\144\002`\255u\020\255u\016\255u\f\255u\b\255\021\144\000"
    L11_11 = L11_11 .. L12_12 .. L13_13
    L12_12 = pe
    L12_12 = L12_12.vm_search
    L13_13 = pevars
    L13_13 = L13_13.sigaddr
    L13_13 = L13_13 - 1024
    L12_12 = L12_12(L13_13, pevars.sigaddr, L11_11, nil, pe.VM_SEARCH_BM)
    if L12_12 == 4294967295 then
      L13_13 = mp
      L13_13 = L13_13.CLEAN
      return L13_13
    end
    L13_13 = pe
    L13_13 = L13_13.mmap_va
    L13_13 = L13_13(L12_12 + 7, 6)
    if string.byte(L13_13, 1) == 116 then
    else
    end
    L4_4 = L12_12 + 7 + (mp.readu_u32(L13_13, 3) + 6)
    L5_5 = pe.mmap_va(L4_4, 9)
  end
end
if L4_4 == 0 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = L3_3 + 5
L6_6 = L4_4 - L6_6
L7_7 = mp
L7_7 = L7_7.bsplit
L8_8 = L6_6
L9_9 = 8
L10_10 = L7_7(L8_8, L9_9)
L11_11 = "\233"
L12_12 = string
L12_12 = L12_12.char
L13_13 = L7_7
L12_12 = L12_12(L13_13, L8_8, L9_9, L10_10)
L11_11 = L11_11 .. L12_12
L12_12 = pe
L12_12 = L12_12.mmap_patch_va
L13_13 = L3_3
L12_12(L13_13, L11_11)
L12_12 = mp
L12_12 = L12_12.INFECTED
return L12_12
