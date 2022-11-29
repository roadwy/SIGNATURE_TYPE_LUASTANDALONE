-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b39c0cfaba_Includes_ResearchData,BMLuaLib 

-- params : ...
-- function num : 0
if whatEventGeneratedThisEvent("reg.exe") == 16400 then
  return mp.INFECTED
end
return mp.CLEAN

