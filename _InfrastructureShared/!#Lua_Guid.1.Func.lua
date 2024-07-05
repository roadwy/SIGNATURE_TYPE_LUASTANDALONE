local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetMachineGUID
L0_0 = L0_0()
if L0_0 ~= nil then
  L2_2 = L0_0
  L1_1 = L0_0.len
  L1_1 = L1_1(L2_2)
elseif L1_1 ~= 36 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1["15e7fdb4-69ea-447f-90ea-4622da7a88d6"] = "Lua:Guid.1"
L1_1["b2343ede-44a4-4178-bd92-d36186294555"] = "Lua:Guid.1"
L1_1["cafefeed-0000-0c7c-ab00-facebeadface"] = "Lua:Guid.1"
L2_2 = L0_0.lower
L2_2 = L2_2(L0_0)
L2_2 = L1_1[L2_2]
if L2_2 ~= nil then
  mp.set_mpattribute(L2_2)
end
return mp.CLEAN
