local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L1_1 == nil or #L1_1 < 5 then
  return mp.CLEAN
end
if string.find(L1_1, "/bin/", 1, true) == 1 or string.find(L1_1, "/system/", 1, true) == 1 or string.find(L1_1, "/sbin/", 1, true) == 1 or string.find(L1_1, "/library/apple/", 1, true) == 1 or string.find(L1_1, "/private/var/db/com.apple.xpc.roleaccountd.staging", 1, true) == 1 or string.find(L1_1, "/usr/", 1, true) == 1 and string.find(L1_1, "/usr/local/", 1, true) ~= 1 or string.find(L1_1, "/applications/microsoft defender.app/", 1, true) == 1 then
  return mp.CLEAN
end
if string.find(L1_1, "/contents/resources/scripts/", 1, true) then
  mp.set_mpattribute("BM_ScptCompiledApp")
  mp.ReportLowfi(L1_1, 1294845348)
end
return mp.INFECTED
