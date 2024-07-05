local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 0
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "\"(.-)\""
L4_4 = L2_2(L3_3, L4_4)
while true do
  L5_5 = string
  L5_5 = L5_5.len
  L6_6 = L4_4
  L5_5 = L5_5(L6_6)
  if L5_5 < 5000 then
    L5_5 = string
    L5_5 = L5_5.find
    L6_6 = L1_1
    L4_4, L5_5 = "\"(.-)\"", L5_5(L6_6, "\"(.-)\"", L3_3 + 2)
    L4_4, L6_6 = "\"(.-)\"", L5_5(L6_6, "\"(.-)\"", L3_3 + 2)
    L3_3 = L6_6
    L2_2 = L5_5
  end
end
L5_5 = string
L5_5 = L5_5.match
L6_6 = L4_4
L5_5 = L5_5(L6_6, "^%%[0-9A-Za-z][0-9A-Za-z]%%[0-9A-Za-z][0-9A-Za-z]%%[0-9A-Za-z][0-9A-Za-z]")
if L5_5 then
  L5_5 = fastHex2Bin
  L6_6 = L4_4
  L6_6 = L5_5(L6_6, "%%" .. "(..)")
  L4_4 = L5_5:sub(1, L6_6)
end
L5_5 = string
L5_5 = L5_5.len
L6_6 = L4_4
L5_5 = L5_5(L6_6)
if L5_5 < 5000 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.len
L6_6 = L4_4
L5_5 = L5_5(L6_6)
if L5_5 > 2097152 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.get_mpattribute
L6_6 = "SCPT:ReverseBase64"
L5_5 = L5_5(L6_6)
if L5_5 then
  L6_6 = L4_4
  L5_5 = L4_4.reverse
  L5_5 = L5_5(L6_6)
  L4_4 = L5_5
end
L6_6 = L4_4
L5_5 = L4_4.match
L5_5 = L5_5(L6_6, "^==")
if L5_5 then
  L6_6 = L4_4
  L5_5 = L4_4.reverse
  L5_5 = L5_5(L6_6)
  L4_4 = L5_5
end
L5_5 = mp
L5_5 = L5_5.set_mpattribute
L6_6 = "//MpBase64DecodeLongLines"
L5_5(L6_6)
L5_5 = mp
L5_5 = L5_5.vfo_add_buffer
L6_6 = L4_4
L5_5(L6_6, "[Jenxcus]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
