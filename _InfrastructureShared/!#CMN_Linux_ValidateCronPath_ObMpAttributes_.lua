local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L0_0(L1_1, L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if L1_1 == nil or L1_1 == "" or L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
if L1_1 == "cron" or L1_1 == "crond" then
  if string.find(L0_0, "/usr/bin", -8, true) or string.find(L0_0, "/usr/sbin", -9, true) or string.find(L0_0, "->usr/sbin", -10, true) or string.find(L0_0, "->sbin", -6, true) or string.find(L0_0, "/opt", 1, true) == 1 then
    if mp.getfilesize() == nil or mp.getfilesize() < 307200 then
      return mp.CLEAN
    end
    mp.set_mpattribute("BM_LargeSizeCronBinary")
  else
    mp.set_mpattribute("BM_MasqueradeCronPath")
  end
elseif string.find(L1_1, ".", 1, true) == 1 or string.find(L0_0, "/.", 1, true) then
  mp.set_mpattribute("BM_CronWithHiddenName")
else
  mp.set_mpattribute("BM_MasqueradeCronName")
end
return mp.CLEAN
