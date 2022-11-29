-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/f9b308dd95e6 

-- params : ...
-- function num : 0
if (string.lower)((string.sub)((bm.get_imagepath)(), -15)) == "\\powershell.exe" then
  return mp.CLEAN
end
return mp.INFECTED

