-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1ad7844c48adb 

-- params : ...
-- function num : 0
if peattributes.isexe and pehdr.NumberOfSections == 4 and pehdr.SizeOfImage >= 3342336 and pehdr.SizeOfImage <= 3538944 and (pesecs[pehdr.NumberOfSections]).Name == ".rsrc" and (pesecs[pehdr.NumberOfSections]).SizeOfRawData == 32768 then
  return mp.SUSPICIOUS
end
return mp.CLEAN

