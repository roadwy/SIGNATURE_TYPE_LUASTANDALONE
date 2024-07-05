local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCPT:Worm:VBS/Jenxcus!Crypt34"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 10000 or L0_0 > 100000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = footerpage
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L3_3 = L1_1
L2_2 = L1_1.match
L4_4 = "=replace%(%l-,\"(.-)\",vbcr%)"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = tostring
L4_4 = headerpage
L3_3 = L3_3(L4_4)
L5_5 = L3_3
L4_4 = L3_3.match
L6_6 = "%l=\"(%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a)\""
L4_4 = L4_4(L5_5, L6_6)
if L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = {}
L7_7 = L4_4
L6_6 = L4_4.gsub
L8_8 = "."
L6_6(L7_7, L8_8, function(A0_9)
  table.insert(_UPVALUE0_, A0_9)
end)
L6_6 = mp
L6_6 = L6_6.readprotection
L7_7 = false
L6_6(L7_7)
L6_6 = mp
L6_6 = L6_6.readfile
L7_7 = 0
L8_8 = L0_0
L6_6 = L6_6(L7_7, L8_8)
L8_8 = L6_6
L7_7 = L6_6.match
L7_7 = L7_7(L8_8, "=\"\"\"\"\r\n%l-=\"(.-)\"\r\n")
if L7_7 == nil then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = L7_7.gsub
L8_8 = L8_8(L7_7, L2_2, "\r")
L7_7 = L8_8
L8_8 = L7_7.match
L8_8 = L8_8(L7_7, "(\".-\")")
L7_7 = L7_7:gsub(L8_8, "\"")
function fastAlphaTransform(A0_10, A1_11, A2_12)
  local L3_13, L4_14
  L3_13 = {
    L4_14,
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z",
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    L4_14,
    "Z"
  }
  L4_14 = "a"
  L4_14 = "Y"
  L4_14 = {}
  for _FORV_8_ = 1, 52 do
    L4_14[A2_12[_FORV_8_]] = L3_13[_FORV_8_]
  end
  return A0_10:gsub(A1_11, L4_14)
end
mp.vfo_add_buffer(fastAlphaTransform(L7_7, ".", L5_5), "[Crypt34]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
