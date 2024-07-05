local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 2097152 then
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.bitor
L3_3 = L3_3(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH)
L3_3 = L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE)
L2_2 = L1_1(L2_2, L3_3, L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE))
L3_3 = L2_2.sub
L3_3 = L3_3(L2_2, -3)
if ("tdb|edb|mdb|dat|ore|pds|sdb|bim|vol|asf|adb|tmp"):find(L3_3, 1, true) then
  return mp.INFECTED
end
if ("catdb|mail.msmessagestore|dhcp.mdb|webcachev01.dat|cachestorage.edb|windowsmail.msmessagestore|defaultstore|actorstatestore|persiststore.edb|imosstore|fs.edb|rm.edb|upgradeservicestore|serverservice.edb|masterservice.edb|6260B5C4|"):find(L2_2, 1, true) then
  return mp.INFECTED
end
if L1_1:find("\\webcache\\", 1, true) or L1_1:find("\\system32\\logfiles", 1, true) or L1_1:find("windows\\cryptoguard", 1, true) then
  return mp.INFECTED
end
if pcall(mp.BMSearchFile, 4096, 2097152, "ATTk590689\144\000") and 4096 < pcall(mp.BMSearchFile, 4096, 2097152, "ATTk590689\144\000") then
  mp.set_mpattribute("Lua:NtdsditEsedbFileHeader.A")
  mp.set_mpattribute("BM_Ntdsdit_ESEDB_FILE")
  return mp.CLEAN
end
return mp.INFECTED
