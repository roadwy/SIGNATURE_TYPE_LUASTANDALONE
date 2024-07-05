local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 1048576 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(false)
L1_1 = mp
L1_1 = L1_1.readfile
L1_1 = L1_1(0, L0_0)
L1_1 = string.gsub(L1_1, "\\x(%x%x)", function(A0_2)
  return string.char(tonumber(A0_2, 16))
end)
mp.vfo_add_buffer(L1_1, "[JSx2a]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
