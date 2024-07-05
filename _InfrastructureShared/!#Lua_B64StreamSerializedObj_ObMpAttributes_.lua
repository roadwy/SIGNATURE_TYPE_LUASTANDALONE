local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 983040 then
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
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.gsub
L3_3 = L1_1
L4_4 = " "
L5_5 = ""
L2_2 = L2_2(L3_3, L4_4, L5_5)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.gsub
L3_3 = L1_1
L4_4 = "\t"
L5_5 = ""
L2_2 = L2_2(L3_3, L4_4, L5_5)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.gsub
L3_3 = L1_1
L4_4 = "\n"
L5_5 = ""
L2_2 = L2_2(L3_3, L4_4, L5_5)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.gsub
L3_3 = L1_1
L4_4 = "\r"
L5_5 = ""
L2_2 = L2_2(L3_3, L4_4, L5_5)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.gsub
L3_3 = L1_1
L4_4 = "\"%+\""
L5_5 = ""
L2_2 = L2_2(L3_3, L4_4, L5_5)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.gsub
L3_3 = L1_1
L4_4 = "\"%w-=%w-&\""
L5_5 = ""
L2_2 = L2_2(L3_3, L4_4, L5_5)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "=\"(AAEAAAD/////AQAAAAAAAAAEAQAAACJT.-)\""
L2_2 = L2_2(L3_3, L4_4)
if L2_2 then
  L3_3 = MpCommon
  L3_3 = L3_3.Base64Decode
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  if L3_3 == nil or L3_3 == "" then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L3_3
  L4_4 = L4_4(L5_5, "MZ\144\000", 1, true)
  if L4_4 then
    L5_5 = L3_3.sub
    L5_5 = L5_5(L3_3, L4_4)
    mp.vfo_add_buffer(L5_5, "[SerializedObj]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
end
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
