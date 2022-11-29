-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/329548381d33 

-- params : ...
-- function num : 0
if peattributes.no_tls == true then
  return mp.CLEAN
end
;
(pe.set_peattribute)("hstr_exhaustive", true)
return mp.INFECTED

