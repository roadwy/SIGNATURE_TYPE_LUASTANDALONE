-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/181b30e0c06e3_Includes_TechniqueTracker,BMLuaLib 

-- params : ...
-- function num : 0
if IsAncestorTaintedScriptOrBin(true) then
  TrackPidAndTechniqueBM("BM", "T1003.008", "CredentialAccess")
  return mp.INFECTED
end
return mp.CLEAN

