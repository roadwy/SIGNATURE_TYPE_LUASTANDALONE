local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = L0_0.match_offset
L1_1 = L1_1 + 78
L2_2 = 0
if L0_0.is_header then
  if mp.getfilesize() >= mp.HEADERPAGE_SZ then
    return mp.CLEAN
  end
  L2_2 = mp.readheader(L1_1, mp.getfilesize() - L1_1)
else
  if mp.getfilesize() >= mp.FOOTERPAGE_SZ then
    return mp.CLEAN
  end
  L2_2 = mp.readfooter(L1_1, mp.getfilesize() - L1_1)
end
if L2_2:find("')[0]))", 1, true) ~= nil then
  L2_2 = L2_2:sub(0, L2_2:find("')[0]))", 1, true) - 1)
  mp.vfo_add_buffer(L2_2, "[Base64Enc1]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  mp.set_mpattribute("//SCPT:Base64.EncodedEC")
  return mp.INFECTED
end
return mp.CLEAN
