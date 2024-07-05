local L0_0, L1_1
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
L1_1(false)
L1_1 = tostring
L1_1 = L1_1(mp.readfile(0, L0_0))
L1_1 = string.lower(L1_1)
if string.find(L1_1, "c%z:%z\\%zc%zo%zs%zu%zv%z\\%zw%ze%zg%ze%zr%zb%z\\%z.+%.%ze%zx%ze") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
