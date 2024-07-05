local L0_0, L1_1
if this_sigattrlog[6].matched then
  L1_1 = this_sigattrlog[6].utf8p1
  if L1_1 then
    L1_1 = string.lower(L1_1)
    if L1_1 then
      L0_0 = string.len(L1_1)
      if L0_0 >= 16 and string.match(L1_1, "^%l:\\(%w+)\\(%w+)%.exe") ~= nil and string.match(L1_1, "^%l:\\(%w+)\\(%w+)%.exe") ~= nil and string.match(L1_1, "^%l:\\(%w+)\\(%w+)%.exe") == string.match(L1_1, "^%l:\\(%w+)\\(%w+)%.exe") then
        bm.add_related_file(this_sigattrlog[6].utf8p1)
        return mp.INFECTED
      end
    end
  end
elseif this_sigattrlog[7].matched then
  L1_1 = this_sigattrlog[7].utf8p1
  if L1_1 then
    L1_1 = string.lower(L1_1)
    if L1_1 then
      L0_0 = string.len(L1_1)
      if L0_0 >= 16 and string.match(L1_1, "^%l:\\(%w+)\\(%w+)%.dll") ~= nil and string.match(L1_1, "^%l:\\(%w+)\\(%w+)%.dll") ~= nil and string.match(L1_1, "^%l:\\(%w+)\\(%w+)%.dll") == string.match(L1_1, "^%l:\\(%w+)\\(%w+)%.dll") then
        bm.add_related_file(this_sigattrlog[7].utf8p1)
        return mp.INFECTED
      end
    end
  end
end
return mp.CLEAN
