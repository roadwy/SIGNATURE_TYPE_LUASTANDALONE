local L0_0
L0_0 = 0
if (hstrlog[10].matched or hstrlog[11].matched) and (hstrlog[12].matched or hstrlog[13].matched) then
  L0_0 = L0_0 + 1
end
if (hstrlog[14].matched or hstrlog[15].matched) and (hstrlog[16].matched or hstrlog[17].matched) then
  L0_0 = L0_0 + 1
end
if hstrlog[18].matched or hstrlog[19].matched or (hstrlog[20].matched or hstrlog[21].matched) and (hstrlog[32].matched or hstrlog[33].matched) then
  L0_0 = L0_0 + 1
end
if (hstrlog[22].matched or hstrlog[23].matched) and (hstrlog[24].matched or hstrlog[25].matched) and (hstrlog[26].matched or hstrlog[27].matched) then
  L0_0 = L0_0 + 1
end
if (hstrlog[22].matched or hstrlog[23].matched) and (hstrlog[24].matched or hstrlog[25].matched) and (hstrlog[28].matched or hstrlog[29].matched) then
  L0_0 = L0_0 + 1
end
if (hstrlog[30].matched or hstrlog[31].matched) and (hstrlog[34].matched or hstrlog[35].matched or hstrlog[32].matched or hstrlog[33].matched) then
  L0_0 = L0_0 + 1
end
if L0_0 >= 2 then
  return mp.INFECTED
elseif L0_0 == 1 then
  mp.set_mpattribute("HSTR:Browser:PassDump:Single")
end
return mp.CLEAN
