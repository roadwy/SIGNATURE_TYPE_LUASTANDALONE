local L0_0, L1_1, L2_2
L0_0 = 0
L1_1 = peattributes
L1_1 = L1_1.no_code
if L1_1 ~= false then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pehdr
L1_1 = L1_1.SizeOfCode
if L1_1 == nil or L1_1 <= 0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = peattributes
L2_2 = L2_2.no_idata
if L2_2 ~= false then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pehdr
L2_2 = L2_2.SizeOfInitializedData
if L2_2 == nil or L2_2 <= 0 then
  return mp.CLEAN
end
if L1_1 >= L2_2 then
  return mp.CLEAN
end
L0_0 = tonumber(L2_2 / L1_1)
mp.set_mpattributeex("Lua:InitDataToCodeRatio", L0_0)
if peattributes.no_resources ~= false then
  return mp.CLEAN
end
if pehdr.DataDirectory[3].Size == nil or 0 >= pehdr.DataDirectory[3].Size then
  return mp.CLEAN
end
if L1_1 >= pehdr.DataDirectory[3].Size then
  return mp.CLEAN
end
L0_0 = tonumber(pehdr.DataDirectory[3].Size / L1_1)
mp.set_mpattributeex("Lua:RsrcDataToCodeRatio", L0_0)
return mp.CLEAN
