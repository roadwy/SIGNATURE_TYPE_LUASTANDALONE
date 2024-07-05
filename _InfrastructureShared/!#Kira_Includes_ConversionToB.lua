local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "SCPT:KiraAsciiObfuscator"
L1_1 = L1_1(L2_2)
if L1_1 then
  L0_0 = 1
else
  L1_1 = mp
  L1_1 = L1_1.get_mpattribute
  L2_2 = "SCPT:KiraDecryptKira"
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L0_0 = 2
  else
    L1_1 = mp
    L1_1 = L1_1.get_mpattribute
    L2_2 = "SCPT:KiraDecryptXor"
    L1_1 = L1_1(L2_2)
    if L1_1 then
      L0_0 = 3
    else
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
  end
end
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L1_1 < 1024 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if L1_1 > 2097152 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = ""
L3_3 = ""
function L4_4(A0_10)
  local L1_11
  return A0_10
end
L5_5 = mp
L5_5 = L5_5.get_mpattribute
L6_6 = "SCPT:KiraStrReverse"
L5_5 = L5_5(L6_6)
if L5_5 then
  L2_2 = "[a-zA-Z_][0-9a-zA-Z_]-%("
  L3_3 = "%)"
  L5_5 = string
  L4_4 = L5_5.reverse
end
L5_5, L6_6 = nil, nil
if L0_0 == 1 then
  L7_7 = string
  L7_7 = L7_7.find
  L8_8 = tostring
  L9_9 = headerpage
  L8_8 = L8_8(L9_9)
  L9_9 = "= ?Chr%(%d-%) ?& ?[cC][hH][rR]%(%d-%)"
  L8_8 = L7_7(L8_8, L9_9)
  _ = L8_8
  L5_5 = L7_7
  L5_5 = L5_5 + 1
elseif L0_0 == 2 then
  L7_7 = string
  L7_7 = L7_7.find
  L8_8 = tostring
  L9_9 = headerpage
  L8_8 = L8_8(L9_9)
  L9_9 = "= ?[a-zA-Z_][0-9a-zA-Z_]-%("
  L9_9 = L9_9 .. L2_2 .. "\".....%d-\"" .. L3_3 .. ",(%d-)%) ?&"
  L9_9 = L7_7(L8_8, L9_9)
  L6_6 = L9_9
  _ = L8_8
  L5_5 = L7_7
  L5_5 = L5_5 + 1
elseif L0_0 == 3 then
  L7_7 = string
  L7_7 = L7_7.find
  L8_8 = tostring
  L9_9 = headerpage
  L8_8 = L8_8(L9_9)
  L9_9 = "= ?[a-zA-Z_][0-9a-zA-Z_]-%("
  L9_9 = L9_9 .. L2_2 .. "\""
  L8_8 = L7_7(L8_8, L9_9)
  L5_5 = L8_8
  _ = L7_7
else
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = mp
L7_7 = L7_7.readprotection
L8_8 = false
L7_7(L8_8)
L7_7 = mp
L7_7 = L7_7.readfile
L8_8 = L5_5
L9_9 = L1_1 - L5_5
L7_7 = L7_7(L8_8, L9_9)
L8_8, L9_9 = nil, nil
if L0_0 == 1 then
  L8_8, _ = string.find(L7_7, [=[

[eE][xX][eE][cC][uU][tT][eE]]=])
  L9_9, _ = fastDec2Bin(L7_7:sub(1, L8_8), "&? ?[cC][hH][rR]%((%d-)%) ?")
elseif L0_0 == 2 then
  L8_8, _ = string.find(L7_7, [=[

[eE][xX][eE][cC][uU][tT][eE]]=])
  L9_9, _ = fastDec2BinWithKey(L7_7:sub(1, L8_8), "&? ?[a-zA-Z_][0-9a-zA-Z_]-%(" .. L2_2 .. "\".....(%d-)\"" .. L3_3 .. ",%d-%) ?", L6_6, function(A0_12, A1_13)
    return _UPVALUE0_(A0_12 + A1_13)
  end)
elseif L0_0 == 3 then
  L8_8, _, L6_6 = string.find(L7_7, "\",(%d-)%)" .. L3_3 .. "%s-[eE][xX][eE][cC][uU][tT][eE]")
  L8_8 = L8_8 - 1
  L9_9, _ = fastBinaryTransform(L4_4(L7_7:sub(1, L8_8)), "(.)", L6_6, mp.bitxor)
else
  return mp.CLEAN
end
mp.vfo_add_buffer(L9_9, "[JXSK" .. L0_0 .. "]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
