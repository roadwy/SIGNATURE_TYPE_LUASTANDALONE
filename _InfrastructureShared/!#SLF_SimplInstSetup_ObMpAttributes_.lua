local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L0_0(L1_1, L1_1(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if L0_0:find("downloads", 1, true) ~= nil or L0_0:find("desktop", 1, true) ~= nil then
  if L1_1:len() == 9 and (string.sub(L1_1, -9) == "setup.zip" or string.sub(L1_1, -9) == "setup.iso") then
    return mp.INFECTED
  end
  if string.sub(L1_1, -4) == ".iso" and (L1_1:find("youtube_adblocker-", 1, true) ~= nil or L1_1:find("youtube_downloader-", 1, true) ~= nil or L1_1:find("winrar-", 1, true) ~= nil or L1_1:find("vkd-", 1, true) ~= nil or L1_1:find("earsbassboost-", 1, true) ~= nil) then
    return mp.INFECTED
  end
end
return mp.CLEAN
