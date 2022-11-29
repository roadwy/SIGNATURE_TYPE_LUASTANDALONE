-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41783aef84fd 

-- params : ...
-- function num : 0
if (hstrlog[1]).hitcount >= 3 then
  return mp.LOWFI
else
  if (hstrlog[2]).hitcount >= 3 then
    return mp.LOWFI
  else
    if (hstrlog[3]).hitcount >= 3 then
      return mp.LOWFI
    else
      return mp.CLEAN
    end
  end
end
return mp.CLEAN

