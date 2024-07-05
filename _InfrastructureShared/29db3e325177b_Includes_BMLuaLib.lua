local L0_0, L1_1, L2_2
L0_0 = "hklm\\software\\microsoft\\windows defender\\exclusions\\ipaddresses\\\\"
L1_1 = "hklm\\software\\policies\\microsoft\\windows defender\\exclusions\\ipaddresses\\\\"
L2_2 = nil
if this_sigattrlog[1].matched then
  L2_2 = string.sub(this_sigattrlog[1].utf8p1, #L0_0 + 1)
elseif this_sigattrlog[2].matched then
  L2_2 = string.sub(this_sigattrlog[2].utf8p1, #L0_0 + 1)
elseif this_sigattrlog[3].matched then
  L2_2 = string.sub(this_sigattrlog[3].utf8p1, #L1_1 + 1)
elseif this_sigattrlog[4].matched then
  L2_2 = string.sub(this_sigattrlog[4].utf8p1, #L1_1 + 1)
end
if L2_2 ~= "New Value #1" then
  if false then
    addDefenderIPExclusion(L2_2)
  else
    removeDefenderIPExclusion(L2_2)
  end
end
return mp.CLEAN
