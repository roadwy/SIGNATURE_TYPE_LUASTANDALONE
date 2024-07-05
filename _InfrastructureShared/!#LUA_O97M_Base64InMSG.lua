local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "PACKED_WITH:(MSG)"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 100000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 > 500000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = headerpage
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L2_2 = L2_2(L3_3, "Content%-Transfer%-Encoding%: BASE64\\par")
if nil == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = false
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = 0
L2_2 = L2_2(L3_3, L0_0)
L3_3 = string
L3_3 = L3_3.gsub
L3_3 = L3_3(L2_2, "^%{\\rtf1\\.*PC%/Binary\\par\r\n\\par\r\n", "")
L3_3 = string.gsub(L3_3, "\\par\r\n\\par\r\n.*$", "")
L3_3 = string.gsub(L3_3, "\\par\r\n", "\r\n")
mp.vfo_add_buffer(L3_3, "[MSG_Base64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
