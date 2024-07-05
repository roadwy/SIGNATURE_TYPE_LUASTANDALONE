local L0_0, L1_1
L0_0 = nri
L0_0 = L0_0.GetSSLCertificate
L0_0 = L0_0()
L1_1 = {}
L1_1.useragent = nri.GetHttpRequestHeader("User-Agent")
L1_1.Subject = L0_0.Subject
L1_1.Issuer = L0_0.Issuer
L1_1.ValidFrom = L0_0.ValidFrom
L1_1.ValidTo = L0_0.ValidTo
L1_1.FingerprintSha1 = L0_0.FingerprintSha1
L1_1.FingerprintSha256 = L0_0.FingerprintSha256
nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L1_1)
return mp.INFECTED
