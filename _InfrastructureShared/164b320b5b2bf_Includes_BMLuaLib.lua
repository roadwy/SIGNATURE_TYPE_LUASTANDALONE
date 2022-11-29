-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/164b320b5b2bf_Includes_BMLuaLib 

-- params : ...
-- function num : 0
if isTamperProtectionOn() then
  local l_0_0, l_0_1 = (bm.get_process_relationships)()
  if l_0_0 then
    for l_0_5,l_0_6 in ipairs(l_0_0) do
      if l_0_6.ppid then
        (bm.add_related_process)(l_0_6.ppid)
      end
    end
  end
  do
    do
      do return mp.INFECTED end
      return mp.CLEAN
    end
  end
end

