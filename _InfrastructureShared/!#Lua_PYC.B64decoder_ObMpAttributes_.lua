local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "AGGR:PYC.B64decoder!filter"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "PACKED_WITH:[PyInsObj]"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "PACKED_WITH:[py2exebin]"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.readu_u16
L1_1 = headerpage
L2_2 = 1
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= 227 then
  L0_0 = mp
  L0_0 = L0_0.readu_u16
  L1_1 = headerpage
  L2_2 = 1
  L0_0 = L0_0(L1_1, L2_2)
  if L0_0 ~= 13330 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 4096 then
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
L1_1 = L1_1(L2_2, L3_3)
L2_2 = 0
for L6_6 in L3_3(L4_4, L5_5) do
  L7_7 = string
  L7_7 = L7_7.len
  L7_7 = L7_7(L6_6)
  if L7_7 >= 128 then
    L7_7 = MpCommon
    L7_7 = L7_7.Base64Decode
    L7_7 = L7_7(L6_6)
    if L7_7 ~= nil and L7_7 ~= "" then
      mp.vfo_add_buffer(L7_7, string.format("[PythonBase64][%02X]", L2_2), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
      L2_2 = L2_2 + 1
    end
  end
end
return L3_3
