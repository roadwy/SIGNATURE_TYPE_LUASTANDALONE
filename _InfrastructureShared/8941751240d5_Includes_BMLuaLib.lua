local L0_0, L1_1, L2_2, L3_3
L0_0 = tonumber
L1_1 = nri
L1_1 = L1_1.GetHttpResponseHeader
L2_2 = "Content-Length"
L3_3 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2))
if L0_0 > 15000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nri
L1_1 = L1_1.GetRawResponseBlob
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = {
    L3_3,
    "exploit",
    "binary",
    "start"
  }
  L3_3 = "exec"
  L3_3 = contains
  L3_3 = L3_3(L1_1, L2_2)
  if L3_3 then
    L3_3 = {
      "wget",
      "curl",
      "powershell",
      "bash",
      "certutil",
      "cmd",
      "mshta",
      "python",
      "bitsadmin"
    }
    if contains(L1_1, L3_3) then
      reportHeaders({"Host", "User-Agent"})
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
