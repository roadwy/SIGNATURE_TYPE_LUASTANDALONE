-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1b8786d644b12 

-- params : ...
-- function num : 0
if peattributes.ismsil and ((hstrlog[5]).matched or (hstrlog[6]).matched) then
  return mp.INFECTED
end
return mp.LOWFI

