local L0_0
L0_0 = {}
if this_sigattrlog[1].matched == true then
  L0_0.SslSerialNumber = this_sigattrlog[1].utf8p1
end
if this_sigattrlog[2].matched == true then
  L0_0.SslIssuer = this_sigattrlog[2].utf8p1
end
if this_sigattrlog[3].matched == true then
  L0_0.SslSubject = this_sigattrlog[3].utf8p1
end
if this_sigattrlog[4].matched == true then
  L0_0.SslPublicKey = this_sigattrlog[4].p1
end
if this_sigattrlog[5].matched == true then
  L0_0.SslPublicKeyEccCurve = this_sigattrlog[5].p1
end
if this_sigattrlog[6].matched == true then
  L0_0.SslCertificateBlob = this_sigattrlog[6].p1
end
if true == true then
  nri.AddTelemetry(mp.bitor(mp.bitor(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), L0_0)
  return mp.INFECTED
end
return mp.CLEAN
