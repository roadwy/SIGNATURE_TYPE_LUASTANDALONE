local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L1_1 = hstrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.VA
end
L1_1 = hstrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[2]
  L0_0 = L1_1.VA
end
L1_1 = hstrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[3]
  L0_0 = L1_1.VA
end
L1_1 = hstrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[4]
  L0_0 = L1_1.VA
end
L1_1 = hstrlog
L1_1 = L1_1[5]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[5]
  L0_0 = L1_1.VA
end
if L0_0 == 2138046464 or L0_0 == 2146697216 then
  L1_1 = mp
  L1_1 = L1_1.readprotection
  L2_2 = false
  L1_1(L2_2)
  L1_1 = pe
  L1_1 = L1_1.mmap_va
  L2_2 = L0_0
  L3_3 = 512
  L1_1 = L1_1(L2_2, L3_3)
  L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10 = nil, nil, nil, nil, nil, nil, nil, nil, nil
  L11_11 = string
  L11_11 = L11_11.gsub
  L12_12 = L1_1
  L13_13 = "\139\192"
  L14_14 = ""
  L12_12 = L11_11(L12_12, L13_13, L14_14)
  L13_13 = string
  L13_13 = L13_13.gsub
  L14_14 = L11_11
  L14_14 = L13_13(L14_14, "\139\210", "")
  L2_2 = L14_14
  L11_11 = L13_13
  L13_13 = string
  L13_13 = L13_13.gsub
  L14_14 = L11_11
  L14_14 = L13_13(L14_14, "\138\210", "")
  L3_3 = L14_14
  L11_11 = L13_13
  L13_13 = string
  L13_13 = L13_13.gsub
  L14_14 = L11_11
  L14_14 = L13_13(L14_14, "\135\255", "")
  L4_4 = L14_14
  L11_11 = L13_13
  L13_13 = string
  L13_13 = L13_13.gsub
  L14_14 = L11_11
  L14_14 = L13_13(L14_14, "\139\246", "")
  L5_5 = L14_14
  L11_11 = L13_13
  L13_13 = string
  L13_13 = L13_13.gsub
  L14_14 = L11_11
  L14_14 = L13_13(L14_14, "QY", "")
  L6_6 = L14_14
  L11_11 = L13_13
  L13_13 = string
  L13_13 = L13_13.gsub
  L14_14 = L11_11
  L14_14 = L13_13(L14_14, "\138\237", "")
  L7_7 = L14_14
  L11_11 = L13_13
  L13_13 = string
  L13_13 = L13_13.gsub
  L14_14 = L11_11
  L14_14 = L13_13(L14_14, "\144\144+", "")
  L8_8 = L14_14
  L11_11 = L13_13
  L13_13 = string
  L13_13 = L13_13.gsub
  L14_14 = L11_11
  L14_14 = L13_13(L14_14, "\135\210", "")
  L9_9 = L14_14
  L11_11 = L13_13
  L13_13 = string
  L13_13 = L13_13.gsub
  L14_14 = L11_11
  L14_14 = L13_13(L14_14, "V^", "")
  L10_10 = L14_14
  L11_11 = L13_13
  L13_13 = 0
  L14_14 = hstrlog
  L14_14 = L14_14[4]
  L14_14 = L14_14.matched
  if L14_14 then
    L14_14 = 0
    repeat
      L11_11, L14_14 = string.gsub(L11_11, "V_", "")
      L13_13 = L13_13 + L14_14
    until L14_14 == 0
  end
  L14_14 = L13_13 + L12_12
  L14_14 = L14_14 + L2_2
  L14_14 = L14_14 + L3_3
  L14_14 = L14_14 + L4_4
  L14_14 = L14_14 + L5_5
  L14_14 = L14_14 + L6_6
  L14_14 = L14_14 + L7_7
  L14_14 = L14_14 + L10_10
  L14_14 = L14_14 + L8_8
  L13_13 = L14_14 + L9_9
  if L13_13 < 65 then
    L14_14 = mp
    L14_14 = L14_14.CLEAN
    return L14_14
  end
  L14_14 = "!decrypted"
  L14_14 = L14_14 .. L11_11
  mp.vfo_add_buffer(L14_14, "[Obfuscator.ZV]", mp.ADD_VFO_PEPACKED)
  return mp.LOWFI
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
