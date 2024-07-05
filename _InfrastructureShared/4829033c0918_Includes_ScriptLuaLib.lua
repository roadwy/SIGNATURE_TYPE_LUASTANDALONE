local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 ~= nil and L0_0 >= 10240 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = LoadMatchedDataInBuffer
L1_1 = L1_1()
L2_2 = "wget http://[%d]+%.[%d]+%.[%d]+%.[%d]+/[%w%.%-]+;%s*chmod%s777%s[/%w%.%-]+;%s[/%w%.%-]+;%srm%s%-r?%s[/%w%.%-]+"
if GetPatternOccurenceCount(L1_1, L2_2) > 5 then
  return mp.INFECTED
end
return mp.CLEAN
