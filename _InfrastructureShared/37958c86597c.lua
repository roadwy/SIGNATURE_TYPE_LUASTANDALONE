-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/37958c86597c 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 8 then
  (pe.set_image_filename)("\"myapp.exe\" /install")
  ;
  (pe.reemulate)()
end
return mp.INFECTED

