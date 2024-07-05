local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 500000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 > 700000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L2_2())
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L2_2 = L2_2(L3_3, "->word/activex/activex")
if nil ~= L2_2 then
  L2_2 = mp
  L2_2 = L2_2.readprotection
  L3_3 = false
  L2_2(L3_3)
  L2_2 = mp
  L2_2 = L2_2.readfile
  L3_3 = 1024
  L2_2 = L2_2(L3_3, 256)
  L3_3 = string
  L3_3 = L3_3.match
  L3_3 = L3_3(L2_2, "\176\014\229\234bJ\206\017\190\214\000\170\000a\016\128")
  if L3_3 ~= nil then
    L3_3 = mp
    L3_3 = L3_3.readfile
    L3_3 = L3_3(2000, 1000)
    if string.match(L3_3, "U\139\236\129\236%X%X%z%z\199E\252%X%X%z%z\198E") ~= nil and string.match(L3_3, "U\139\236\129\236%X%X%z%z\199E\252%X%X%z%z\198E"):len() == 18 then
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
