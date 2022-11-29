-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ef78d5c9986b 

-- params : ...
-- function num : 0
do
  if (hstrlog[1]).matched or (hstrlog[2]).matched then
    local l_0_0 = (mp.getfilesize)()
    if peattributes.no_security == true and (l_0_0 == 126976 or l_0_0 == 122880) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

