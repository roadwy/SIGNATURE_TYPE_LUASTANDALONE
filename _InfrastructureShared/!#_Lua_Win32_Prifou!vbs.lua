local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "ALFPER:Win32/Prifou!vbs"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
  if L0_0 > 24576 then
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
  L2_2 = L1_1.gsub
  L2_2 = L2_2(L1_1, "'.-\n", "")
  if L2_2 and L2_2(L1_1, "'.-\n", "") > 100 then
    mp.vfo_add_buffer(L2_2, "[Prifou!vbs]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
