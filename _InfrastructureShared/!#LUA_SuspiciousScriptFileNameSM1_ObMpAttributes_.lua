local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "w9%-883748479.htm") ~= nil or string.find(L0_0, "inv%-901926.html") ~= nil or string.find(L0_0, "invoice l12217 from lep engineering plastics ltd.html", 1, true) ~= nil or string.find(L0_0, "payoff_0130202_30999.html", 1, true) ~= nil or string.find(L0_0, "ref%-paymentcopy%#%d%d+.shtm") ~= nil or string.find(L0_0, "cauc2135354_202303011253.html", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
