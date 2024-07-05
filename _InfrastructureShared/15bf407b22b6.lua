local L0_0, L1_1, L2_2, L3_3, L4_4
function L0_0(A0_5, A1_6)
  if A0_5 < A1_6 then
    return A0_5
  end
  return A1_6
end
min = L0_0
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 32768 then
  L1_1 = mp
  L1_1 = L1_1.readprotection
  L2_2 = false
  L1_1(L2_2)
  L1_1 = mp
  L1_1 = L1_1.readfile
  L2_2 = 0
  L3_3 = L0_0
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L4_4 = "rO0ABXVy"
  L2_2 = L2_2(L3_3, L4_4, 1, true)
  if L2_2 ~= nil then
    L3_3 = mp
    L3_3 = L3_3.readfile
    L4_4 = L2_2 - 3
    L3_3 = L3_3(L4_4, 2)
    L4_4 = mp
    L4_4 = L4_4.readfile
    L4_4 = L4_4(L2_2 - 1, min(string.byte(L3_3) * 256 + string.byte(L3_3, 2), L0_0 - L2_2))
    mp.vfo_add_buffer(L4_4, "[serialized_class]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
