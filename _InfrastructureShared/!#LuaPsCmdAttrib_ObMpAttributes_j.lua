local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 ~= nil and L0_0:len() > 10 and L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)) ~= nil then
  if not L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("->", 1, true) then
    return mp.CLEAN
  end
  if L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("->[embeddedenc]->", 1, true) then
    mp.set_mpattribute("LuaPSEncoded")
  end
  if L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("->(base64)->", 1, true) then
    mp.set_mpattribute("LuaPSB64")
  end
  if L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("->(utf-", 1, true) then
    mp.set_mpattribute("LuaPSUnicode")
  end
end
return mp.CLEAN
