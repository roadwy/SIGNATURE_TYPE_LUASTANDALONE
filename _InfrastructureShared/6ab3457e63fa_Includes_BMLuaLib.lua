local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
end
L1_1 = {
  "pastebin.com",
  "paste.ee",
  "j.mp",
  "github.com",
  "githubusercontent.com",
  "bit.ly",
  "bitly.com",
  "bitbucket.org",
  "textbin.net"
}
if contains(L0_0, L1_1) then
  bm.add_related_string("CurlPublicStager_cmdline", L0_0, bm.RelatedStringBMReport)
  return mp.INFECTED
end
return mp.CLEAN
