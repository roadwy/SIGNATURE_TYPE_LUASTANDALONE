-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b37991a8c8_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
do
  if l_0_0 ~= nil and l_0_0.command_line ~= nil then
    local l_0_1 = (string.lower)(l_0_0.command_line)
    bm_AddRelatedFileFromCommandLine(l_0_1, nil, nil, 1)
    AddResearchData(l_0_0.ppid, true)
    return mp.INFECTED
  end
  return mp.CLEAN
end
