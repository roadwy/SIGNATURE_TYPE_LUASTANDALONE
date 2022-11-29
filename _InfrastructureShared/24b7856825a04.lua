-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/24b7856825a04 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT > 5 and mp.HSTR_WEIGHT < 10 then
  (mp.set_mpattribute)("HSTR:Torwofun.A")
else
  if mp.HSTR_WEIGHT == 5 then
    (mp.set_mpattribute)("do_exhaustivehstr_rescan_torwofun_a1")
  end
end
return mp.INFECTED

