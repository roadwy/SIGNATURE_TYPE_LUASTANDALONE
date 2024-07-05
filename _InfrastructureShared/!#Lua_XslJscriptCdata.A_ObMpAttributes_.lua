local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 >= 65536 then
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
L2_2 = string
L2_2 = L2_2.match
L2_2 = L2_2(L1_1, "<!%[CDATA%[(.-)%]%]>%s-</ms.-:script>")
if L2_2 then
  mp.vfo_add_buffer(L2_2, "[CdataScript]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
return mp.CLEAN
