local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 2097152 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = headerpage
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.match
L2_2 = L2_2(L1_1, "^%%[0-9A-Za-z][0-9A-Za-z]%%[0-9A-Za-z][0-9A-Za-z]%%[0-9A-Za-z][0-9A-Za-z]")
if nil == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readprotection
L2_2(false)
L2_2 = mp
L2_2 = L2_2.readfile
L2_2 = L2_2(0, L0_0)
if L2_2 == nil then
  return mp.CLEAN
end
mp.vfo_add_buffer(fastHex2Bin(L2_2, "%%([0-9A-Za-z][0-9A-Za-z])"), "[JenxcusDeHex]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
