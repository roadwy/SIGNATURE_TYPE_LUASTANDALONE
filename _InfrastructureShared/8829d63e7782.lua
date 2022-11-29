-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8829d63e7782 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("BM_LNK_FILE") and (mp.get_mpattribute)("Exploit:O97M/DDEDownloader.C.2") then
  return mp.INFECTED
end
return mp.CLEAN

