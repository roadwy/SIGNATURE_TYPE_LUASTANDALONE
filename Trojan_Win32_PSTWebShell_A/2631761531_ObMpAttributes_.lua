local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 >= 282624 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_FILENAME
L4_4 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3))
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L1_1
L4_4 = -4
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= nil and L2_2 == ".pst" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readprotection
L4_4 = false
L3_3(L4_4)
L3_3 = mp
L3_3 = L3_3.readfile
L4_4 = 20480
L3_3 = L3_3(L4_4, 65536)
L4_4 = string
L4_4 = L4_4.lower
L4_4 = L4_4(tostring(L3_3))
if string.find(L4_4, "script language=", 1, true) == nil then
  return mp.CLEAN
end
if string.find(L4_4, "eval(request", 1, true) ~= nil and string.find(L4_4, "unsafe", 1, true) ~= nil and (string.find(L4_4, "cmd", 1, true) ~= nil or string.find(L4_4, "exec_code", 1, true) ~= nil) then
  if L0_0 == 271360 then
    return mp.INFECTED
  else
    return mp.LOWFI
  end
end
return mp.CLEAN
