local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 250 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 > 1048576 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = tostring
L3_3 = headerpage
L2_2 = L2_2(L3_3)
L3_3 = "[eE][xX][eE][cC][uU][tT][eE]%s-%(+%s-[cC][hH][rR]%(+"
L2_2 = L1_1(L2_2, L3_3)
if L2_2 == nil then
  L3_3 = string
  L3_3 = L3_3.find
  L4_4 = tostring
  L5_5 = headerpage
  L4_4 = L4_4(L5_5)
  L5_5 = "[eE][xX][eE][cC][uU][tT][eE][gG][lL][oO][bB][aA][lL]%([cC][hH][rR]%("
  L4_4 = L3_3(L4_4, L5_5)
  L2_2 = L4_4
  L1_1 = L3_3
end
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3, L4_4 = nil, nil
L5_5 = "%)+ -& -_?%s-vbcrlf -%)+"
L6_6 = mp
L6_6 = L6_6.HEADERPAGE_SZ
if L0_0 > L6_6 then
  L6_6 = string
  L6_6 = L6_6.find
  L1_1, L6_6 = tostring(footerpage), L6_6(tostring(footerpage), L5_5)
  L3_3 = L6_6
  L6_6 = mp
  L6_6 = L6_6.readprotection
  L6_6(false)
  L6_6 = mp
  L6_6 = L6_6.readfile
  L6_6 = L6_6(L2_2 - 1, L0_0 - mp.FOOTERPAGE_SZ + L3_3 - L2_2 + 1)
  L4_4 = L6_6
else
  L6_6 = string
  L6_6 = L6_6.find
  L1_1, L6_6 = tostring(headerpage), L6_6(tostring(headerpage), L5_5)
  L3_3 = L6_6
  L6_6 = tostring
  L6_6 = L6_6(headerpage)
  L6_6 = L6_6.sub
  L6_6 = L6_6(L6_6, L2_2, L3_3)
  L4_4 = L6_6
end
L6_6 = L4_4.gsub
L6_6 = L6_6(L4_4, "%)+ ?& ?_?%s-[cC][hH][rR]%(+", ",")
L4_4 = L6_6
L6_6 = "(%d+)^%(-(%d+%/%d+)"
if string.find(L4_4, L6_6) ~= nil then
  L4_4 = string.gsub(L4_4, L6_6, "Math.pow%(%1,%(%2%)%)%+0.5", 3000)
  L4_4 = L4_4:sub(1, L4_4:find("%^%(") - 1) .. "%1)"
end
mp.vfo_add_buffer("eval(String.fromCharCode" .. L4_4 .. ")", "[toJS]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
