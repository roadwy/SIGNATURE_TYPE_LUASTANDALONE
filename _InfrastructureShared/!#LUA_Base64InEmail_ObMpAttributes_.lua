local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 10000 or L0_0 > 50000 then
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
L4_4 = "Received: from.*%(HELO.*Message%-ID%:.*Content%-Type%:  multipart/x%-zip.*Content%-Transfer%-Encoding%: base64.*Content%-Disposition%: attachment"
L2_2 = L2_2(L3_3, L4_4)
if nil == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.set_mpattribute
L3_3 = "//LUA:Base64InEmail"
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = false
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = 0
L4_4 = L0_0
L2_2 = L2_2(L3_3, L4_4)
L3_3 = string
L3_3 = L3_3.find
L4_4 = L2_2
L5_5 = "Content%-Type%:  multipart/x%-zip.*Content%-Transfer%-Encoding%: base64.*Content%-Disposition%: attachment\r\n\r\n(.*)\r\n\r\n%-%-%-%-boundary"
L5_5 = L3_3(L4_4, L5_5)
mp.vfo_add_buffer(L5_5, "[MSG_Base64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
