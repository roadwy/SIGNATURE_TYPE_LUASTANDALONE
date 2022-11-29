-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1a3b3ff8f3a5b_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = 150000000
if l_0_0 < (bm.GetSignatureMatchDuration)() then
  return mp.CLEAN
end
reportRelatedBmHits()
addRelatedProcess()
TrackPidAndTechniqueBM("BM", "T1486", "Impact_CcryptEncryption")
RemediateProcessTreeForLinux()
return mp.INFECTED

