local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 500000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.getfilename
L2_2 = L2_2()
L1_1 = L1_1(L2_2, L2_2())
L2_2 = string
L2_2 = L2_2.find
L2_2 = L2_2(L1_1, "->word/activex/activex")
if nil ~= L2_2 then
  L2_2 = mp
  L2_2 = L2_2.readprotection
  L2_2(false)
  L2_2 = mp
  L2_2 = L2_2.readfile
  L2_2 = L2_2(65536, 3000)
  if string.find(L2_2, "j&X1\201\137\226d\255\019YZ", 1, true) ~= nil then
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
