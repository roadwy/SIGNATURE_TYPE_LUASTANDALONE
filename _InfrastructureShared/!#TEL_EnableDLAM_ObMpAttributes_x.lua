-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#TEL_EnableDLAM_ObMpAttributes_x 

-- params : ...
-- function num : 0
if (mp.GetResmgrBasePlugin)() ~= "Regkeyvalue" then
  return mp.CLEAN
end
if not (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH) then
  return mp.CLEAN
end
return mp.INFECTED

