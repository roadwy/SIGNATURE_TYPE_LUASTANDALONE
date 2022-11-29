-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6978dbed1f92 

-- params : ...
-- function num : 0
if pehdr.TimeDateStamp < 1433874509 then
  (mp.set_mpattribute)("Lowfi:HSTR:BrowserModifier:Win32/AOLToolbarOld")
  return mp.CLEAN
end
return mp.INFECTED

