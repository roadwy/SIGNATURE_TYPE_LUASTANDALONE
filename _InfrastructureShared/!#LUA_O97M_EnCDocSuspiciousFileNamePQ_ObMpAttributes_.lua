local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "form_%d%d%d%d%d%d+_%d%d%d%d2021%.xls") ~= nil or string.find(L0_0, "information%[2021%.%d%d%.%d%d_%d%d%-%d%d%]%.xlsb") ~= nil or string.find(L0_0, "new_working_conditions%[2021%.%d%d%.%d%d_%d%d%-%d%d%]%.xlsb") ~= nil or string.find(L0_0, "document%[2021%.%d%d%.%d%d_%d%d%-%d%d%]%.xlsb") ~= nil or string.find(L0_0, "termination letter%.%d%d%d%d+%.xlsb") ~= nil or string.find(L0_0, "termination letter %d%d+%.xlsb") ~= nil or string.find(L0_0, "notificaion%-%d%d%d+_2021%d%d%d%d%.xlsb") ~= nil or string.find(L0_0, "termination_%d%d+%.xlsb") ~= nil or string.find(L0_0, "document%-%d%d+_2021%d%d%d%d%.xlsb") ~= nil or string.find(L0_0, "emergreport%-%d%d%d%d%d%d+%-12%d%d2021%.xlsb") ~= nil or string.find(L0_0, "reservationdetails%-%d%d%d%d%d%d+%-dec%-%d%d%.xlsb") ~= nil or string.find(L0_0, "positive_result_%d%d%d%d%d%d%d%d%.xls") ~= nil or string.find(L0_0, "complaint%-%d%d%d%d%d%d+%-dec%-%d%d%.xlsb") ~= nil or string.find(L0_0, "summary%-%d%d%d%d%d%d+%-dec%d%d%.xlsb") ~= nil or string.find(L0_0, "payment_swift_copy_of__62_271%.03%.%.xls") ~= nil or string.find(L0_0, "invoce %d%d mar 23%.doc") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
