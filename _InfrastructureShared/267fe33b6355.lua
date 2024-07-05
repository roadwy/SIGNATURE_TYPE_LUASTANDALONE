local L0_0, L1_1
function L0_0(A0_2, A1_3)
  local L2_4, L3_5, L4_6
  if not (A0_2 <= 0) then
    L2_4 = mp
    L2_4 = L2_4.getfilesize
    L2_4 = L2_4()
  elseif A1_3 >= L2_4 then
    L2_4 = mp
    L2_4 = L2_4.CLEAN
    return L2_4
  end
  L2_4 = mp
  L2_4 = L2_4.readfile
  L3_5 = A1_3
  L4_6 = 32
  L2_4 = L2_4(L3_5, L4_6)
  L3_5 = mp
  L3_5 = L3_5.readu_u32
  L4_6 = L2_4
  L3_5 = L3_5(L4_6, 5)
  L3_5 = L3_5 - 4
  if not (L3_5 <= 0) then
    L4_6 = mp
    L4_6 = L4_6.getfilesize
    L4_6 = L4_6()
  elseif L3_5 >= L4_6 then
    L4_6 = mp
    L4_6 = L4_6.CLEAN
    return L4_6
  end
  if L3_5 > 32 then
    L4_6 = "MSCF"
    L4_6 = L4_6 .. mp.readfile(A1_3, L3_5)
    mp.vfo_add_buffer(L4_6, string.format("[SmrtInstMkrCab%x]", A1_3), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
  L4_6 = simdmpcab
  return L4_6(A0_2 - 1, A1_3 + L3_5)
end
simdmpcab = L0_0
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
if L1_1 <= 0 then
  return mp.CLEAN
end
mp.readprotection(false)
simdmpcab(5, L1_1)
return mp.CLEAN
