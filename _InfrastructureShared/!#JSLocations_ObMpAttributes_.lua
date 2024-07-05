local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if L0_0:find("\\office\\recent", 1, true) or L0_0:find("\\windows\\recent", 1, true) or L0_0:find("\\microsoft\\teams\\", 1, true) or L0_0:find("\\adobetemp\\", 1, true) or L0_0:find("\\node_modules\\", 1, true) or L0_0:find("\\appdata\\local\\packages\\microsoft.windows", 1, true) or L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("index.js", 1, true) or L0_0(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("main.js", 1, true) then
end
if true then
  mp.set_mpattribute("Lua:JSExclusions")
end
return mp.CLEAN
