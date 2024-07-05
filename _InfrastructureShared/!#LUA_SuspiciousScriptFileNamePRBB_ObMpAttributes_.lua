local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "startapril%(%a%a%d%d%d%d%) %(%d%)%.wsf") ~= nil or string.find(L0_0, "startapril%(%a%a%d%d%d%d%)%.wsf") ~= nil or string.find(L0_0, "startapril%(%a%d%d%d%d%)%.wsf") ~= nil or string.find(L0_0, "aprilclaim%(%a%a%d%d%d%d%)%.wsf") ~= nil or string.find(L0_0, "aprilclaim%(%a%d%d%d%d%)%.wsf") ~= nil or string.find(L0_0, "aprildetails%(%a%a%d%d%d%d%)%.wsf") ~= nil or string.find(L0_0, "aprildetails%(%a%d%d%d%d%)%.wsf") ~= nil or string.find(L0_0, "aprilinv%(%a%d%d%d%d%)%.wsf") ~= nil or string.find(L0_0, "aprilinv%(%a%a%d%d%d%d%)%.wsf") ~= nil or string.find(L0_0, "activity%-april%(%d%d%d%d%)%.wsf") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
