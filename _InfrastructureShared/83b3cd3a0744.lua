local L0_0, L1_1, L4_2, L5_3
for _FORV_5_ = 1, L5_3.SIGATTR_LOG_SZ do
  if sigattr_head[_FORV_5_].matched then
    if sigattr_head[_FORV_5_].attribute == 16384 or sigattr_head[_FORV_5_].attribute == 16385 then
      L1_1 = string.lower(sigattr_head[_FORV_5_].utf8p1)
    elseif sigattr_head[_FORV_5_].attribute == 16393 then
      L0_0 = string.lower(sigattr_head[_FORV_5_].utf8p2)
    end
    if L1_1 and L0_0 and string.find(L0_0, L1_1) then
      return mp.INFECTED
    end
  end
end
return L4_2
