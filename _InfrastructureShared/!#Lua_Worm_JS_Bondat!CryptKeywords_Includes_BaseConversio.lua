local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 92000 or L0_0 < 88000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = headerpage
L1_1 = L1_1(L2_2)
L2_2 = tostring
L3_3 = footerpage
L2_2 = L2_2(L3_3)
L1_1 = L1_1 .. L2_2
L3_3 = L1_1
L2_2 = L1_1.gmatch
L4_4 = "%[([^%[%]]*[%+\\][^%[%]]*)%]%("
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.char
function L4_4(A0_7)
  local L1_8
  L1_8 = _UPVALUE0_
  return L1_8(tonumber(A0_7, 16))
end
function L5_5(A0_9)
  local L1_10
  L1_10 = _UPVALUE0_
  return L1_10(tonumber(A0_9, 8))
end
L6_6 = StrToBaseN
for _FORV_11_ in L2_2, nil, nil do
  if ({
    prototype = "",
    constructor = "",
    fromCharCode = "",
    parseInt = "",
    split = "",
    length = "",
    Function = ""
  })[_FORV_11_:gsub("\\x(..)", L4_4):gsub("%((%d+)%)%.toString%((%d+)%)", L6_6):gsub("([\"%+%s]+)", ""):gsub("\\(%d+)", L5_5):gsub("\\", "")] then
    return mp.INFECTED
  end
end
return mp.CLEAN
