local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L2_2 = L1_1.match
  L2_2 = L2_2(L1_1, "([^\\]+)$")
  if L2_2 ~= "wmiprvse.exe" then
    L2_2 = L1_1.match
    L2_2 = L2_2(L1_1, "([^\\]+)$")
    if L2_2 ~= "explorer.exe" then
      L2_2 = L1_1.match
      L2_2 = L2_2(L1_1, "([^\\]+)$")
    end
  elseif L2_2 == "mmc.exe" then
    L2_2 = versioning
    L2_2 = L2_2.IsSeville
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = versioning
      L2_2 = L2_2.GetOrgID
      L2_2 = L2_2()
      if L2_2 ~= nil then
        L2_2 = string.lower(L2_2)
        if ({
          ["d542d020-ab72-4d56-b7b6-b9f1e998a75a"] = true,
          ["2135e9fa-2274-4c30-a08d-e47c01dda1ec"] = true
        })[L2_2] then
          return mp.LOWFI
        end
      end
      return mp.INFECTED
    end
    L2_2 = mp
    L2_2 = L2_2.LOWFI
    return L2_2
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
