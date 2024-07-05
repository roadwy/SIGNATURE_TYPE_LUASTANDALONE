local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L0_0 = L0_0(L1_1, 1)
if L0_0 > 536870912 then
  L0_0 = mp
  L0_0 = L0_0.readu_u32
  L1_1 = headerpage
  L0_0 = L0_0(L1_1, 1)
  if L0_0 < 553648128 then
    L0_0 = mp
    L0_0 = L0_0.readprotection
    L1_1 = false
    L0_0(L1_1)
    L0_0 = mp
    L0_0 = L0_0.readfile
    L1_1 = 0
    L0_0 = L0_0(L1_1, 4)
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(tostring(L0_0))
    if string.find(L1_1, "rem ", 1, true) ~= nil then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.set_mpattribute
L1_1 = "Lua:UnknownBigFile_GT20M"
L0_0(L1_1)
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
