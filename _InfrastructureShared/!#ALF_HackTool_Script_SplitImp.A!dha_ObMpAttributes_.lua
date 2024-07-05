local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0:find("\\cyagent\\", 1, true) and (L0_0:find("\\build\\lib\\cyagent\\", 1, true) or L0_0:find("\\lib\\site-packages\\cyagent\\", 1, true) or L0_0:find("\\cyagent\\agent_services\\", 1, true) or L0_0:find("\\cyagent\\installers\\", 1, true) or L0_0:find("\\cyagent\\consts\\", 1, true) or L0_0:find("\\cyagent\\config\\", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
