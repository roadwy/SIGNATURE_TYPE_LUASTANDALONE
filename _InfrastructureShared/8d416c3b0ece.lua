-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8d416c3b0ece 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("SIGATTR:DelphiFile") then
  (mp.set_mpattribute)("SIGATTR:DelphiFile")
  ;
  (mp.set_mpattribute)("MpEnableCOM")
end
return mp.CLEAN

