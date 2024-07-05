local L0_0, L3_1, L4_2, L5_3
L0_0 = {}
for _FORV_4_ = 1, L4_2.SIGATTR_LOG_SZ do
  if sigattr_head[_FORV_4_].matched and sigattr_head[_FORV_4_].attribute == 28769 then
    L0_0.TlsJa3SHash = sigattr_head[_FORV_4_].utf8p1
    nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L0_0)
  end
end
return L3_1
