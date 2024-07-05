local L0_0, L1_1, L2_2, L3_3, L4_4
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
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3)
L2_2 = 0
L3_3 = string
L3_3 = L3_3.gsub
L4_4 = L1_1
L4_4 = L3_3(L4_4, "/%*%w-%*/", "")
L2_2 = L2_2 + L4_4
L3_3, L4_4 = string.gsub(L3_3, "\\x(%x%x)", function(A0_5)
  local L2_6
  L2_6 = string
  L2_6 = L2_6.format
  return L2_6("%c", tonumber(A0_5, 16))
end)
L2_2 = L2_2 + L4_4
repeat
  L3_3, L4_4 = string.gsub(L3_3, "\"([%w-%.%s/]-)\"%+\"([%w-%.%s/]-)\"", "\"%1%2\"")
  L2_2 = L2_2 + L4_4
until L4_4 == 0
repeat
  L3_3, L4_4 = string.gsub(L3_3, "(%d+)%+(%d+)", function(A0_7, A1_8)
    return A0_7 + A1_8
  end)
  L2_2 = L2_2 + L4_4
until L4_4 == 0
repeat
  L3_3, L4_4 = string.gsub(L3_3, "(%d%d?)%-(%d%d?)", function(A0_9, A1_10)
    return A0_9 - A1_10
  end)
  L2_2 = L2_2 + L4_4
until L4_4 == 0
repeat
  L3_3, L4_4 = string.gsub(L3_3, ";(%a)%[\"(%w+)\"%]%(", ";%1.%2(")
  L2_2 = L2_2 + L4_4
until L4_4 == 0
if L2_2 > 3 then
  mp.vfo_add_buffer(L3_3, "[NeutrinoEK.Y]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
return mp.CLEAN
