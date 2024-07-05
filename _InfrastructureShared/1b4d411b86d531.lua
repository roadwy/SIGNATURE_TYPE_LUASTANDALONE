local L0_0, L1_1
L0_0 = nri
L0_0 = L0_0.GetSSLCertificate
L0_0 = L0_0()
L1_1 = {}
if L0_0 then
  L1_1 = {
    useragent = nri.GetHttpRequestHeader("User-Agent"),
    Subject = L0_0.Subject,
    Issuer = L0_0.Issuer,
    ValidFrom = L0_0.ValidFrom,
    ValidTo = L0_0.ValidTo,
    FingerprintSha1 = L0_0.FingerprintSha1,
    FingerprintSha256 = L0_0.FingerprintSha256
  }
end
nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L1_1)
return mp.INFECTED
