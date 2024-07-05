local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 1048576 then
  L0_0 = mp
  L0_0 = L0_0.readprotection
  L1_1 = false
  L0_0(L1_1)
  L0_0 = mp
  L0_0 = L0_0.readfile
  L1_1 = 0
  L0_0 = L0_0(L1_1, mp.getfilesize())
  L1_1 = L0_0.find
  L1_1 = L1_1(L0_0, "TV[pq]QAA[IM]AAAAE")
  if L1_1 ~= 1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = L0_0.gsub
  L1_1 = L1_1(L0_0, "([A-Za-z0-9+/=]+)(|)", "%1")
  mp.vfo_add_buffer(L1_1, "[B64Strpd]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
