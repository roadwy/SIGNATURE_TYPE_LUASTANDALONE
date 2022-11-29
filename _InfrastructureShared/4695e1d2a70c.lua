-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4695e1d2a70c 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:DelphiFile") and pehdr.NumberOfSections == 8 then
  (pe.set_image_filename)("\"myapp.exe\" /install")
  ;
  (pe.reemulate)()
end
;
(mp.set_mpattribute)("PUA:Block:Prifou")
return mp.INFECTED

