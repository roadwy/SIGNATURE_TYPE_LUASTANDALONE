local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "LUA:VBS/JenxcusAnsiToString1"
L1_1 = L1_1(L2_2)
if L1_1 then
  L0_0 = 1
else
  L1_1 = mp
  L1_1 = L1_1.get_mpattribute
  L2_2 = "LUA:VBS/JenxcusAnsiToString2"
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L0_0 = 2
  else
    L1_1 = mp
    L1_1 = L1_1.get_mpattribute
    L2_2 = "LUA:VBS/JenxcusAnsiToString3"
    L1_1 = L1_1(L2_2)
    if L1_1 then
      L0_0 = 3
    else
      L1_1 = mp
      L1_1 = L1_1.get_mpattribute
      L2_2 = "LUA:VBS/JenxcusAnsiToString4"
      L1_1 = L1_1(L2_2)
      if L1_1 then
        L0_0 = 4
      else
        L1_1 = mp
        L1_1 = L1_1.CLEAN
        return L1_1
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = false
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = 0
L4_4 = L1_1
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3, L4_4, L5_5 = nil, nil, nil
if L0_0 == 1 then
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L2_2
  L8_8 = "= ?%(?%(?\"(.-)\".-= ?%(?%(?\"(.-)\".+[Ss][Pp][Ll][Ii][Tt]%("
  L5_5, L6_6 = nil, L6_6(L7_7, L8_8)
  L5_5, L7_7 = nil, L6_6(L7_7, L8_8)
  L5_5, L8_8 = nil, L6_6(L7_7, L8_8)
  L4_4 = L8_8
  L3_3 = L7_7
  L3_3 = L6_6
elseif L0_0 == 2 then
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L2_2
  L8_8 = "= ?%(?%(?\"(.-)\".-[Ss][Pp][Ll][Ii][Tt].?%(.-\"(.-)\""
  L5_5, L8_8 = L6_6(L7_7, L8_8)
  L4_4 = L8_8
  L3_3 = L7_7
  L3_3 = L6_6
elseif L0_0 == 3 then
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L2_2
  L8_8 = "= ?%(?%(?\"(.-)\".-[Ss][Pp][Ll][Ii][Tt]%(\"(.-)\""
  L4_4, L8_8 = L6_6(L7_7, L8_8)
  L5_5 = L8_8
  L3_3 = L7_7
  L3_3 = L6_6
elseif L0_0 == 4 then
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L2_2
  L8_8 = "= ?%(?%(?(%(?[cC][hH][rR].+%)).-[eE][xX][eE][cC][uU][tT][eE]"
  L8_8 = L6_6(L7_7, L8_8)
  L4_4 = L8_8
  L3_3 = L7_7
  L3_3 = L6_6
else
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = #L4_4
if L6_6 < 3000 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6, L7_7 = nil, nil
if L0_0 == 4 then
  L8_8 = fastDec2Bin
  L7_7, L8_8 = L4_4, L8_8(L4_4, "%(?%(?[cC][hH][rR]%)?%)?%((%d-)%) ?&? ?")
  L6_6 = L8_8
else
  L8_8 = string
  L8_8 = L8_8.gsub
  L8_8 = L8_8(L5_5, "([%.%$%%%^%+%-%*%?%(%)%{%}%[%]])", "%%%1")
  if L4_4:match("^%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-" .. L8_8 .. "%d-") == nil then
    return mp.CLEAN
  end
  L6_6, L7_7 = fastDec2Bin(L4_4, "(%d-)" .. L8_8)
end
L8_8 = mp
L8_8 = L8_8.vfo_add_buffer
L8_8(L6_6:sub(1, L7_7), "[JenxcusToStr]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
L8_8 = mp
L8_8 = L8_8.CLEAN
return L8_8
