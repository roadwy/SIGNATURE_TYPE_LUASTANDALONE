local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "BM_LNK_FILE"
L0_0 = L0_0(L1_1)
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "PACKED_WITH:[CMDEmbedded]"
  L0_0 = L0_0(L1_1)
  if L0_0 == false then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FNAME
L2_2 = L2_2(L3_3, mp.FILEPATH_QUERY_PATH)
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L3_3 = L1_1(L2_2, L3_3)
L1_1 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2, L3_3))
L2_2 = false
L3_3 = L1_1.sub
L3_3 = L3_3(L1_1, -3)
if ("tmf|emf|wmf|spl|off|bak|m4a|mp4|mp3|wav|bmp|kgx|idx|etl|log|ico|sdd|dat"):find(L3_3) then
  L2_2 = true
end
if L0_0:find("\\office\\recent", 1, true) or L0_0:find("\\windows\\recent", 1, true) or L0_0:find("\\microsoft\\teams\\", 1, true) or L0_0:find("\\windows\\cryptoguard", 1, true) or L0_0:find("\\microsoft\\msip\\tokencache", 1, true) or L0_0:find("\\carbonblack\\store", 1, true) or L0_0:find("\\crowdstrike\\downloads", 1, true) or L0_0:find("\\cyvera\\ransomware", 1, true) or L0_0:find("\\outlook\\offline address books", 1, true) or L0_0:find("\\slack\\service worker\\cachestorage", 1, true) or L0_0:find("\\systemcertificates\\my\\certificates\\", 1, true) or L0_0:find("\\temp\\photocache\\", 1, true) then
  L2_2 = true
end
if L2_2 then
  mp.set_mpattribute("Lua:LnkExclusions")
end
return mp.CLEAN
