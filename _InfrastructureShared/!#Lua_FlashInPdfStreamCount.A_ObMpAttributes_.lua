local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.bitand
L1_1 = mp
L1_1 = L1_1.readu_u32
L1_1 = L1_1(headerpage, 1)
L0_0 = L0_0(L1_1, 16777215)
if L0_0 ~= 5461830 then
  L0_0 = mp
  L0_0 = L0_0.bitand
  L1_1 = mp
  L1_1 = L1_1.readu_u32
  L1_1 = L1_1(headerpage, 1)
  L0_0 = L0_0(L1_1, 16777215)
  if L0_0 ~= 5461827 then
    L0_0 = mp
    L0_0 = L0_0.bitand
    L1_1 = mp
    L1_1 = L1_1.readu_u32
    L1_1 = L1_1(headerpage, 1)
    L0_0 = L0_0(L1_1, 16777215)
    if L0_0 ~= 5461850 then
      L0_0 = mp
      L0_0 = L0_0.CLEAN
      return L0_0
    end
  end
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.match
  L1_1 = L1_1(L0_0, "->%(pdf(%d+):")
  if L1_1 == nil then
    return mp.CLEAN
  end
  L1_1 = tonumber(L1_1)
  if L1_1 > 5 then
    mp.set_mpattribute("//Lua:FlashInPdfMoreThan_5")
  elseif L1_1 > 3 then
    mp.set_mpattribute("//Lua:FlashInPdfMoreThan_3")
  elseif L1_1 > 2 then
    mp.set_mpattribute("//Lua:FlashInPdfMoreThan_2")
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
