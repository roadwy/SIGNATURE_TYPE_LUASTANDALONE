local L0_0, L1_1, L4_2, L5_3
for _FORV_5_ = 1, L5_3.SIGATTR_LOG_SZ do
  if sigattr_tail[_FORV_5_].matched and sigattr_tail[_FORV_5_].attribute == 16384 then
    L0_0 = sigattr_tail[_FORV_5_].utf8p1
    if L0_0 then
      L0_0 = string.lower(L0_0)
      if L0_0 then
        L1_1 = string.len(L0_0)
        if L1_1 >= 16 and string.find(L0_0, "\\windows", 1, true) == nil and string.sub(L0_0, -4) == ".exe" and string.match(L0_0, "^%l:\\(%w+)\\(%w+)%.exe") ~= nil and string.match(L0_0, "^%l:\\(%w+)\\(%w+)%.exe") ~= nil and string.match(L0_0, "^%l:\\(%w+)\\(%w+)%.exe") == string.match(L0_0, "^%l:\\(%w+)\\(%w+)%.exe") then
          bm.add_related_file(sigattr_tail[_FORV_5_].utf8p1)
          return mp.INFECTED
        end
      end
    end
  end
end
return L4_2
