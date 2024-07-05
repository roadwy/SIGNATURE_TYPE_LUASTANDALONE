local L0_0, L1_1
function L0_0(A0_2, A1_3, A2_4)
  local L3_5, L4_6
  if not (A0_2 <= 0) then
    L3_5 = A1_3 + 24
  elseif A2_4 <= L3_5 then
    L3_5 = mp
    L3_5 = L3_5.CLEAN
    return L3_5
  end
  L3_5 = mp
  L3_5 = L3_5.readfile
  L4_6 = A1_3
  L3_5 = L3_5(L4_6, 24)
  L4_6 = mp
  L4_6 = L4_6.readu_u32
  L4_6 = L4_6(L3_5, 9)
  if L4_6 ~= 0 then
    L4_6 = mp
    L4_6 = L4_6.CLEAN
    return L4_6
  end
  L4_6 = mp
  L4_6 = L4_6.readu_u32
  L4_6 = L4_6(L3_5, 5)
  if L4_6 < 0 or A2_4 <= L4_6 then
    return mp.CLEAN
  end
  if L4_6 >= 32 then
    mp.vfo_add_buffer(mp.readfile(A1_3 + 24, L4_6), string.format("[SmrtInstMkrEmb%x]", A1_3), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
  return simdmpemb(A0_2 - 1, A1_3 + L4_6 + 24, A2_4)
end
simdmpemb = L0_0
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 4096 or L0_0 > 16777216 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pe
L1_1 = L1_1.get_regval
L1_1 = L1_1(pe.REG_EAX)
if L1_1 <= 0 or L1_1 > 16777216 then
  return mp.CLEAN
end
mp.readprotection(false)
simdmpemb(10, L1_1, L0_0)
return mp.CLEAN
