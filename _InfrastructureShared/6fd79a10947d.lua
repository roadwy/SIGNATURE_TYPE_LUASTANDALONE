-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6fd79a10947d 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil and (string.lower)((string.sub)(l_0_0.image_path, -11)) == "svchost.exe" then
  return mp.LOWFI
end
return mp.CLEAN

