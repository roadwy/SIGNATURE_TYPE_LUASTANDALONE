local L0_0, L1_1, L2_2, L5_3, L6_4
for _FORV_6_ = 1, L6_4.SIGATTR_LOG_SZ do
  if sigattr_head[_FORV_6_].matched then
    if sigattr_head[_FORV_6_].attribute == 16384 and sigattr_head[_FORV_6_].utf8p1 and L0_0 == nil then
      L0_0 = string.lower(sigattr_head[_FORV_6_].utf8p1)
      L1_1 = string.match(L0_0, "\\roaming\\%x%x+\\([^\\]+)$")
    elseif sigattr_head[_FORV_6_].attribute == 16393 and sigattr_head[_FORV_6_].utf8p2 and L2_2 == nil then
      L2_2 = string.lower(sigattr_head[_FORV_6_].utf8p2)
      L2_2 = string.match(L2_2, "\\roaming\\%x%x+\\([^\\]+)$")
    end
    if L0_0 ~= nil and L2_2 ~= nil and L1_1 == L2_2 then
      mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(sigattr_head[_FORV_6_].utf8p1), 3276690080)
      return mp.INFECTED
    end
  end
end
return L5_3
