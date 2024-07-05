local L0_0, L1_1, L2_2, L3_3
function L0_0(A0_4, A1_5, A2_6, A3_7)
  if not A3_7 then
    error("need four bytes to convert to int", 2)
  end
  return A0_4 + A1_5 * 256 + A2_6 * 65536 + A3_7 * 16777216
end
bytes_to_int = L0_0
function L0_0(A0_8, A1_9)
  local L2_10, L3_11, L4_12, L5_13
  L2_10 = string
  L2_10 = L2_10.byte
  L3_11 = A0_8
  L4_12 = A1_9
  L2_10 = L2_10(L3_11, L4_12)
  L3_11 = string
  L3_11 = L3_11.byte
  L4_12 = A0_8
  L5_13 = A1_9 + 1
  L3_11 = L3_11(L4_12, L5_13)
  L4_12 = string
  L4_12 = L4_12.byte
  L5_13 = A0_8
  L4_12 = L4_12(L5_13, A1_9 + 2)
  L5_13 = string
  L5_13 = L5_13.byte
  L5_13 = L5_13(A0_8, A1_9 + 3)
  return (bytes_to_int(L2_10, L3_11, L4_12, L5_13))
end
pointer2int = L0_0
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.isdll
  if L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.hasexports
    if L0_0 then
      L0_0 = hstrlog
      L0_0 = L0_0[1]
      L0_0 = L0_0.VA
      L1_1 = pe
      L1_1 = L1_1.mmap_va
      L2_2 = L0_0 + 7
      L3_3 = 5
      L1_1 = L1_1(L2_2, L3_3)
      L2_2 = pointer2int
      L3_3 = L1_1
      L2_2 = L2_2(L3_3, 1)
      L3_3 = pe
      L3_3 = L3_3.mmap_va
      L3_3 = L3_3(L2_2, 93)
      if string.match(L3_3, "Sistema indispon") ~= nil and string.match(L3_3, "vel no momento, tente mais tarde") ~= nil then
        return mp.CLEAN
      end
      L3_3 = string.gsub(L3_3, "@", "")
      L3_3 = string.gsub(L3_3, "!", "")
      L3_3 = string.gsub(L3_3, "*", "")
      L3_3 = string.gsub(L3_3, "#", "")
      if string.match(L3_3, "Sistema indispon") ~= nil and string.match(L3_3, "vel no momento, tente mais tarde") ~= nil then
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
