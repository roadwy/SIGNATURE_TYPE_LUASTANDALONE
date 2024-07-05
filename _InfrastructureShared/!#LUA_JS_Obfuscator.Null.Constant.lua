local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "SCPT:JS/Obfuscator.ShellExecute.Cmd"
L1_1 = L1_1(L2_2)
if L1_1 then
  L0_0 = 1
else
  L1_1 = mp
  L1_1 = L1_1.get_mpattribute
  L2_2 = "SCPT:JS/Obfuscator.Null.Constant"
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L0_0 = 2
  else
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L1_1 < 2000 or L1_1 > 30000 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = false
L2_2(L3_3)
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = 0
L4_4 = L1_1
L2_2 = L2_2(L3_3, L4_4)
L3_3, L4_4 = nil, nil
if L0_0 == 1 then
  L5_5 = string
  L5_5 = L5_5.find
  L3_3, L4_4, L5_5 = L2_2, "(%^.-\",)", L5_5(L2_2, "(%^.-\",)")
  L3_3 = L5_5
elseif L0_0 == 2 then
  L5_5 = string
  L5_5 = L5_5.find
  L3_3, L4_4, L5_5 = L2_2, "(%=%'%^.-%)%;\\\"\"%;)", L5_5(L2_2, "(%=%'%^.-%)%;\\\"\"%;)")
  L3_3 = L5_5
else
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
if L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = nil
if L0_0 == 1 then
  L3_3, L5_5 = string.gsub(L4_4, "%^", "", 25)
elseif L0_0 == 2 then
  L3_3, L5_5 = string.gsub(L4_4, "%=%'%^", "", 25)
else
  return mp.CLEAN
end
if L5_5 < 25 then
  return mp.CLEAN
end
mp.set_mpattribute("//LUA:JS/Obfuscator.Equal.Apostrophe.Caret")
return mp.CLEAN
