local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = mp
L0_0 = L0_0.get_parent_filehandle
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_filesize_by_handle
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 > 500000 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if L1_1 < 8192 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readfile_by_handle
L2_2 = L2_2(L0_0, 4096, 4096)
mp.vfo_add_buffer(L2_2, "[pdfwithjsarray]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
