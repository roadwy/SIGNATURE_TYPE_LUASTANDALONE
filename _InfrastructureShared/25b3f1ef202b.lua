local L3_0, L4_1
for _FORV_4_ = 1, mp.SIGATTR_LOG_SZ do
  if sigattr_head[_FORV_4_].matched and sigattr_head[_FORV_4_].attribute == 16384 and L3_0 == nil and sigattr_head[_FORV_4_].wp1 ~= nil then
    mp.ReportLowfi(sigattr_head[_FORV_4_].utf8p1, 2175865982)
    return mp.INFECTED
  end
end
return L4_1
