local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = L0_0.match_offset
L1_1 = L1_1 + 18
L2_2 = 0
L3_3 = 0
if L0_0.is_header then
  if mp.HEADERPAGE_SZ >= 4095 then
    L2_2 = 4095
  else
    L2_2 = mp.HEADERPAGE_SZ
  end
else
  if 4095 <= mp.FOOTERPAGE_SZ then
    L2_2 = 4095
  else
    L2_2 = mp.FOOTERPAGE_SZ
  end
  if mp.getfilesize() < mp.FOOTERPAGE_SZ then
    return mp.CLEAN
  end
  L1_1 = mp.getfilesize() - mp.FOOTERPAGE_SZ + L1_1
end
if L1_1 ~= nil then
  if L2_2 > L1_1 then
    mp.readprotection(false)
    L3_3 = mp.readfile(L1_1, L2_2 - L1_1)
    mp.vfo_add_buffer(L3_3, "[Base64Decode]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    mp.set_mpattribute("//SCPT:Base64.Decoded")
  end
  return mp.INFECTED
end
return mp.CLEAN
