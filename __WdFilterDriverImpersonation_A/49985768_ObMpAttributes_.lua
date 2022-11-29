-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/__WdFilterDriverImpersonation_A/49985768_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)) == "wdfilter.sys" then
  return mp.INFECTED
end
return mp.CLEAN

