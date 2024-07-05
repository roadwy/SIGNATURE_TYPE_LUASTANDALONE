local L0_0, L1_1
function L0_0(A0_2, A1_3)
  local L2_4, L3_5, L4_6, L5_7
  L2_4 = string.byte(A0_2, A1_3)
  L3_5 = string.byte(A0_2, A1_3 + 1)
  L4_6 = string.byte(A0_2, A1_3 + 2)
  L5_7 = string.byte(A0_2, A1_3 + 3)
  return L2_4 + L3_5 * 256 + L4_6 * 65536 + L5_7 * 1048576
end
getu32 = L0_0
L0_0 = nil
L1_1 = hstrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.VA
  L0_0 = L1_1 - 1280
else
  L1_1 = hstrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.VA
    L0_0 = L1_1 - 1360
  else
    L1_1 = hstrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = hstrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.VA
      L0_0 = L1_1 - 1744
    else
      L1_1 = hstrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = hstrlog
        L1_1 = L1_1[4]
        L1_1 = L1_1.VA
        L0_0 = L1_1 - 1280
      else
        L1_1 = hstrlog
        L1_1 = L1_1[5]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = hstrlog
          L1_1 = L1_1[5]
          L1_1 = L1_1.VA
          L0_0 = L1_1 - 944
        else
          L1_1 = mp
          L1_1 = L1_1.CLEAN
          return L1_1
        end
      end
    end
  end
end
L1_1 = pe
L1_1 = L1_1.mmap_va
L1_1 = L1_1(L0_0, 16)
if #L1_1 ~= 16 then
  return mp.CLEAN
end
if getu32(L1_1, 1) ~= 0 or getu32(L1_1, 5) == 0 or getu32(L1_1, 9) ~= 0 or getu32(L1_1, 13) == 0 or getu32(L1_1, 5) ~= getu32(L1_1, 13) then
  return mp.CLEAN
end
return mp.SUSPICIOUS
