local L0_0, L1_1, L4_2, L5_3
for _FORV_5_ = 1, L5_3.SIGATTR_LOG_SZ do
  if sigattr_head[_FORV_5_].matched then
    if sigattr_head[_FORV_5_].attribute == 16384 and L0_0 == nil then
      L0_0 = string.lower(sigattr_head[_FORV_5_].utf8p1)
    elseif sigattr_head[_FORV_5_].attribute == 16393 and L1_1 == nil then
      L1_1 = string.lower(sigattr_head[_FORV_5_].utf8p2)
      L1_1 = string.gsub(L1_1, "\"", "")
    end
    if L0_0 ~= nil and L1_1 ~= nil then
      if L0_0 == L1_1 then
        mp.ReportLowfi(sigattr_head[_FORV_5_].utf8p1, 3836302819)
        return mp.INFECTED
      end
      break
    end
  end
end
return L4_2
