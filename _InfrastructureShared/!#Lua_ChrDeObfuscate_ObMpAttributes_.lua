local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCRIPT:ChrObfus!filter"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
  if L0_0 > 24576 then
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
  L4_4 = L3_3(L4_4, "\"&Chr%((%d%d)%)", function(A0_5)
    return string.char(A0_5)
  end)
  L2_2 = L2_2 + L4_4
  L3_3, L4_4 = string.gsub(L3_3, "&Chr%((%d%d)%)", function(A0_6)
    return string.char(A0_6)
  end)
  L2_2 = L2_2 + L4_4
  L3_3, L4_4 = string.gsub(L3_3, "Chr%((%d%d)%)", function(A0_7)
    return string.char(A0_7)
  end)
  L2_2 = L2_2 + L4_4
  if L2_2 > 300 then
    L3_3 = string.gsub(L3_3, " _\n", "")
    L3_3 = string.gsub(L3_3, "([%w%s])\"&\"", "%1")
    L3_3 = string.gsub(L3_3, "&\"", "")
    L3_3 = string.gsub(L3_3, "\"&", "")
    mp.vfo_add_buffer(L3_3, "[deobfus]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
