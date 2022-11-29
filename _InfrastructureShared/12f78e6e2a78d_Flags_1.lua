-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/12f78e6e2a78d_Flags_1 

-- params : ...
-- function num : 0
local l_0_0 = 0
if (hstrlog[8]).matched then
  local l_0_1 = (hstrlog[8]).VA + 4
  local l_0_2 = (mp.readu_u32)((pe.mmap_va)(l_0_1, 4), 1)
  if (pe.mmap_va)(l_0_2, 11) == "~backup.dat" then
    return mp.INFECTED
  end
  l_0_0 = 3
end
do
  if mp.HSTR_WEIGHT - l_0_0 >= 6 then
    return mp.INFECTED
  else
    if mp.HSTR_WEIGHT - l_0_0 >= 4 then
      return mp.SUSPICIOUS
    end
  end
  return mp.CLEAN
end

