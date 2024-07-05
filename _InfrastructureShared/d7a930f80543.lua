local L0_0, L1_1
L0_0 = string
function L1_1(A0_2)
  return (A0_2:gsub("..", function(A0_3)
    return string.char(tonumber(A0_3, 16))
  end))
end
L0_0.fromhex = L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = nri
L1_1 = L1_1.GetURI
L1_1 = L1_1()
L0_0 = L0_0(L1_1, L1_1())
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.match
  L1_1 = L1_1(L0_0, "^http://canonicalizer.ucsuri.tcs/(%w%w+)$")
  L1_1 = string.gsub(L1_1, "00", "")
  L1_1 = L1_1:fromhex()
  L1_1 = string.match(L1_1, "^%d%d?%d?%.%d%d?%d?%.%d%d?%d?%.%d%d?%d?:%d%d%d+/(.*)$")
  if L1_1 and string.len(L1_1) > 24 and string.find(L1_1, "^[%w/_%-=]+$") and nri.GetHttpCommand() == nri.HTTP_GET and nri.GetHttpResponseHeader("Server") == "Apache" and nri.GetHttpResponseHeader("Content-Type") == "application/octet-stream" and tonumber(nri.GetHttpResponseHeader("Content-Length")) and tonumber(nri.GetHttpResponseHeader("Content-Length")) > 160000 and tonumber(nri.GetHttpResponseHeader("Content-Length")) < 220000 then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
