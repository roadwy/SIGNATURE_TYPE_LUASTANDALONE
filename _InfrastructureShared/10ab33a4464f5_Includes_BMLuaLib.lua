local L0_0, L1_1
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[3].utf8p2
elseif this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[4].utf8p2
end
if contains(L0_0, "%-[eE][ncodemaNCODEMA]*%s+", false) then
  L1_1 = NormalizeCmdline("powershell", L0_0)
  if contains(L1_1, "vmblastsg") then
    L0_0 = L1_1
  end
else
  return mp.CLEAN
end
if contains(L0_0, "absg-worker.js") and contains(L0_0, "req.connection.end") then
  return mp.INFECTED
end
return mp.CLEAN
