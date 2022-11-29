-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d778b7a2132f 

-- params : ...
-- function num : 0
if (hstrlog[5]).matched then
  (mp.set_mpattribute)("Lowfi:Komodia:WFP:NoVuln")
  return mp.CLEAN
end
return mp.INFECTED

