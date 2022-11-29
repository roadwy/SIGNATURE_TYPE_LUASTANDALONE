-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1d778e562af10 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("PUA:Block:OutBrowse")
if not (mp.get_mpattribute)("HSTR:SoftwareBundler:Win32/Avarus") and not peattributes.hstr_exhaustive then
  (pe.set_peattribute)("hstr_exhaustive", true)
  ;
  (pe.reemulate)()
end
return mp.INFECTED

