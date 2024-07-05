local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = peattributes
L0_0 = L0_0.is_delphi
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.hasexports
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if not (L0_0 < 5) then
  L0_0 = pehdr
  L0_0 = L0_0.NumberOfSections
elseif L0_0 > 6 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[1]
L0_0 = L0_0.Name
if L0_0 ~= ".text" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[3]
L0_0 = L0_0.Name
if L0_0 ~= ".data" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
function L0_0(A0_10, A1_11, A2_12, A3_13)
  if not A3_13 then
    error("need four bytes to convert to int", 2)
  end
  return A0_10 + A1_11 * 256 + A2_12 * 65536 + A3_13 * 16777216
end
bytes_to_int = L0_0
function L0_0(A0_14, A1_15)
  local L2_16, L3_17, L4_18, L5_19
  L2_16 = string
  L2_16 = L2_16.byte
  L3_17 = A0_14
  L4_18 = A1_15
  L2_16 = L2_16(L3_17, L4_18)
  L3_17 = string
  L3_17 = L3_17.byte
  L4_18 = A0_14
  L5_19 = A1_15 + 1
  L3_17 = L3_17(L4_18, L5_19)
  L4_18 = string
  L4_18 = L4_18.byte
  L5_19 = A0_14
  L4_18 = L4_18(L5_19, A1_15 + 2)
  L5_19 = string
  L5_19 = L5_19.byte
  L5_19 = L5_19(A0_14, A1_15 + 3)
  return (bytes_to_int(L2_16, L3_17, L4_18, L5_19))
end
pointer2int = L0_0
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 512000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = 64
L1_1 = 0
L2_2 = 0
L3_3 = hstrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = hstrlog
  L3_3 = L3_3[1]
  L2_2 = L3_3.VA
else
  L3_3 = hstrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = hstrlog
    L3_3 = L3_3[2]
    L2_2 = L3_3.VA
  else
    L3_3 = hstrlog
    L3_3 = L3_3[3]
    L3_3 = L3_3.matched
    if L3_3 then
      L3_3 = hstrlog
      L3_3 = L3_3[3]
      L2_2 = L3_3.VA
    else
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
  end
end
L3_3 = mp
L3_3 = L3_3.readprotection
L3_3(L4_4)
L3_3 = pe
L3_3 = L3_3.mmap_va
L3_3 = L3_3(L4_4, L5_5)
for L7_7 = 1, L0_0 do
  L8_8 = string
  L8_8 = L8_8.byte
  L9_9 = L3_3
  L8_8 = L8_8(L9_9, L7_7)
  if L8_8 == 128 then
    L9_9 = string
    L9_9 = L9_9.byte
    L9_9 = L9_9(L3_3, L7_7 + 1)
    if L9_9 == 61 and string.byte(L3_3, L7_7 + 6) == 77 then
      L1_1 = pointer2int(L3_3, L7_7 + 2)
      break
    end
  end
end
if L1_1 == 0 then
  return L4_4
end
for L8_8 = 1, L0_0 do
  L9_9 = string
  L9_9 = L9_9.byte
  L9_9 = L9_9(L3_3, L8_8)
  if L9_9 == 52 and string.byte(L3_3, L8_8 + 2) == 44 then
    if L4_4 ~= 0 then
      break
    end
  end
  if L9_9 == 128 and string.byte(L3_3, L8_8 + 3) == 128 then
    if L4_4 ~= 0 then
      break
    end
  end
end
if L4_4 == 0 then
  return L5_5
end
L8_8 = 1
L8_8 = L5_5
L9_9 = 2
L8_8 = string
L8_8 = L8_8.byte
L9_9 = L5_5
L8_8 = L8_8(L9_9, 3)
L9_9 = string
L9_9 = L9_9.byte
L9_9 = L9_9(L5_5, 4)
if mp.bitxor(L6_6, L4_4) - L4_4 == 77 and mp.bitxor(L7_7, L4_4) - L4_4 == 90 and mp.bitxor(L8_8, L4_4) - L4_4 == 144 and mp.bitxor(L9_9, L4_4) - L4_4 == 0 then
  return mp.INFECTED
end
return mp.CLEAN
