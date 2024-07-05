local L0_0, L1_1, L2_2, L3_3
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L0_0 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[2]
      L0_0 = L2_2.utf8p2
    end
  end
end
L2_2 = contains
L3_3 = L0_0
L2_2 = L2_2(L3_3, "%-[eE][ncodemaNCODEMA]*%s+", false)
if L2_2 then
  L2_2 = NormalizeCmdline
  L3_3 = "powershell"
  L2_2 = L2_2(L3_3, L0_0)
  L1_1 = L2_2
  L2_2 = contains
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, "downloadstring")
  if not L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L0_0 = L1_1
end
L2_2 = {
  L3_3,
  "invoke-expression"
}
L3_3 = "iex"
L3_3 = contains
L3_3 = L3_3(L0_0, L2_2)
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {
  "github.com",
  "raw.githubusercontent.com",
  "bit.ly",
  "bitly.com",
  "bitbucket.org",
  "dropbox.com",
  "transfer.sh",
  "webhook.site",
  "ufile.io"
}
if contains(L0_0, L3_3) then
  bm.add_related_string("PSPublicStager_cmdline", L0_0, bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
