-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4e29b514cb9e 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("SCRIPT:PythonCode.A") then
  return mp.INFECTED
end
return mp.LOWFI

