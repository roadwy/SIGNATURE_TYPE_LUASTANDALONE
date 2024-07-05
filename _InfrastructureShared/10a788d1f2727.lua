local L0_0, L1_1, L2_2, L3_3, L4_4
function L0_0(A0_5, A1_6, A2_7, A3_8)
  if not A3_8 then
    error("need four bytes to convert to int", 2)
  end
  return A0_5 + A1_6 * 256 + A2_7 * 65536 + A3_8 * 16777216
end
bytes_to_int = L0_0
function L0_0(A0_9, A1_10)
  local L2_11, L3_12, L4_13, L5_14
  L2_11 = string
  L2_11 = L2_11.byte
  L3_12 = A0_9
  L4_13 = A1_10
  L2_11 = L2_11(L3_12, L4_13)
  L3_12 = string
  L3_12 = L3_12.byte
  L4_13 = A0_9
  L5_14 = A1_10 + 1
  L3_12 = L3_12(L4_13, L5_14)
  L4_13 = string
  L4_13 = L4_13.byte
  L5_14 = A0_9
  L4_13 = L4_13(L5_14, A1_10 + 2)
  L5_14 = string
  L5_14 = L5_14.byte
  L5_14 = L5_14(A0_9, A1_10 + 3)
  return (bytes_to_int(L2_11, L3_12, L4_13, L5_14))
end
pointer2int = L0_0
function L0_0(A0_15)
  A0_15 = string.gsub(A0_15, "@", "")
  A0_15 = string.gsub(A0_15, "!", "")
  A0_15 = string.gsub(A0_15, "*", "")
  A0_15 = string.gsub(A0_15, "#", "")
  A0_15 = string.gsub(A0_15, "%^", "")
  A0_15 = string.gsub(A0_15, "~", "")
  A0_15 = string.gsub(A0_15, "+", "")
  A0_15 = string.gsub(A0_15, "%[", "")
  A0_15 = string.gsub(A0_15, "]", "")
  return A0_15
end
decryptSub = L0_0
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.VA
  L1_1 = pe
  L1_1 = L1_1.mmap_va
  L2_2 = L0_0 + 33
  L3_3 = 5
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = pointer2int
  L3_3 = L1_1
  L4_4 = 1
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = pe
  L3_3 = L3_3.mmap_va
  L4_4 = L2_2
  L3_3 = L3_3(L4_4, 20)
  L4_4 = string
  L4_4 = L4_4.match
  L4_4 = L4_4(L3_3, "Erase ")
  if L4_4 ~= nil then
    L4_4 = string
    L4_4 = L4_4.match
    L4_4 = L4_4(L3_3, "%s")
    if L4_4 ~= nil then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
  end
  L4_4 = decryptSub
  L4_4 = L4_4(L3_3)
  if string.match(L4_4, "Erase ") ~= nil and string.match(L4_4, "%s") ~= nil then
    return mp.INFECTED
  end
end
L0_0 = hstrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.VA
  L1_1 = pe
  L1_1 = L1_1.mmap_va
  L2_2 = L0_0 + 28
  L3_3 = 5
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = pointer2int
  L3_3 = L1_1
  L4_4 = 1
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = pe
  L3_3 = L3_3.mmap_va
  L4_4 = L2_2
  L3_3 = L3_3(L4_4, 50)
  L4_4 = string
  L4_4 = L4_4.match
  L4_4 = L4_4(L3_3, "c:\\win")
  if L4_4 ~= nil then
    L4_4 = string
    L4_4 = L4_4.match
    L4_4 = L4_4(L3_3, ".cpl")
    if L4_4 ~= nil then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
  end
  L4_4 = decryptSub
  L4_4 = L4_4(L3_3)
  if string.match(L4_4, "c:\\win") ~= nil and string.match(L4_4, ".cpl") ~= nil then
    return mp.INFECTED
  end
end
L0_0 = hstrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.VA
  L1_1 = pe
  L1_1 = L1_1.mmap_va
  L2_2 = L0_0 + 7
  L3_3 = 5
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = pointer2int
  L3_3 = L1_1
  L4_4 = 1
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = pe
  L3_3 = L3_3.mmap_va
  L4_4 = L2_2
  L3_3 = L3_3(L4_4, 50)
  L4_4 = string
  L4_4 = L4_4.match
  L4_4 = L4_4(L3_3, "ESET Client Frame")
  if L4_4 ~= nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = decryptSub
  L4_4 = L4_4(L3_3)
  if string.match(L4_4, "ESET Client Frame") ~= nil then
    return mp.INFECTED
  end
end
L0_0 = hstrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[5]
  L0_0 = L0_0.matched
  if not L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[6]
    L0_0 = L0_0.matched
    if not L0_0 then
      L0_0 = hstrlog
      L0_0 = L0_0[7]
      L0_0 = L0_0.matched
    end
  end
elseif L0_0 then
  L0_0 = nil
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
  L1_1 = hstrlog
  L1_1 = L1_1[6]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[6]
    L0_0 = L1_1.VA
  end
  L1_1 = hstrlog
  L1_1 = L1_1[7]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[7]
    L0_0 = L1_1.VA
  end
  L1_1 = pe
  L1_1 = L1_1.mmap_va
  L2_2 = L0_0 + 7
  L3_3 = 5
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = pointer2int
  L3_3 = L1_1
  L4_4 = 1
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = pe
  L3_3 = L3_3.mmap_va
  L4_4 = L2_2
  L3_3 = L3_3(L4_4, 50)
  L4_4 = string
  L4_4 = L4_4.match
  L4_4 = L4_4(L3_3, "ESET Client Frame")
  if L4_4 ~= nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = string
  L4_4 = L4_4.match
  L4_4 = L4_4(L3_3, "Avira AntiVir Personal")
  if L4_4 ~= nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = string
  L4_4 = L4_4.match
  L4_4 = L4_4(L3_3, "CAvastTrayIcon")
  if L4_4 ~= nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = decryptSub
  L4_4 = L4_4(L3_3)
  if string.match(L4_4, "ESET Client Frame") ~= nil then
    return mp.INFECTED
  end
  if string.match(L4_4, "Avira AntiVir Personal") ~= nil then
    return mp.INFECTED
  end
  if string.match(L4_4, "CAvastTrayIcon") ~= nil then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
