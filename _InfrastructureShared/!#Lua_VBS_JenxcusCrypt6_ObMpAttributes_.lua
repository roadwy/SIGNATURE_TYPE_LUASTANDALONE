local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 15000 or L0_0 > 60000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 0
L1_1 = L1_1(L2_2, L0_0)
L2_2 = L1_1.match
L2_2 = L2_2(L1_1, "=%s-[Dd][Ee][Cc][Rr][Yy][Pp][Tt]%([Ss][Tt][Rr][Rr][Ee][Vv][Ee][Rr][Ss][Ee]%(\"(.-)\"%)%)")
if L2_2 == nil then
  return mp.CLEAN
end
L2_2 = L2_2:reverse()
mp.vfo_add_buffer(L2_2, "[ReverseB64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
