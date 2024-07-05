local L0_0, L3_1, L4_2
for _FORV_4_ = 1, L4_2.SIGATTR_LOG_SZ do
  if sigattr_head[_FORV_4_].matched and sigattr_head[_FORV_4_].attribute == 16401 then
    L0_0 = string.lower(sigattr_head[_FORV_4_].utf8p1)
    if string.find(L0_0, "\\program files", 1, true) then
      return mp.CLEAN
    end
  end
end
return L3_1
