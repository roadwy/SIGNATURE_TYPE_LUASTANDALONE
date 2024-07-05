local L0_0, L1_1, L2_2, L3_3, L4_4
L2_2 = this_sigattrlog
L2_2 = L2_2[9]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[9]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[9]
    L0_0 = L2_2.utf8p2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[10]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[10]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[10]
      L0_0 = L2_2.utf8p2
    end
  end
end
L2_2 = contains
L3_3 = L0_0
L4_4 = "downloadstring"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 then
else
  L2_2 = contains
  L3_3 = L0_0
  L4_4 = "%-[eE][ncodemaNCODEMA]*%s+"
  L2_2 = L2_2(L3_3, L4_4, false)
  if L2_2 then
    L2_2 = NormalizeCmdline
    L3_3 = "powershell"
    L4_4 = L0_0
    L2_2 = L2_2(L3_3, L4_4)
    L1_1 = L2_2
    L2_2 = contains
    L3_3 = L1_1
    L4_4 = "downloadstring"
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 then
      L0_0 = L1_1
    end
  else
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = {L3_3}
L3_3 = "\\landesk\\ldclient\\ivanti-psmodule"
L3_3 = contains
L4_4 = L0_0
L3_3 = L3_3(L4_4, L2_2)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {
  L4_4,
  "invoke-expression"
}
L4_4 = "iex"
L4_4 = contains
L4_4 = L4_4(L0_0, L3_3)
if L4_4 then
  L4_4 = {
    "pastebin.com",
    "paste.ee",
    "j.mp",
    "textbin.net"
  }
  if contains(L0_0, L4_4) then
    if IsProcNameInParentProcessTree("BM", "wmiprvse.exe") then
      mp.TriggerScanResource("wmi", "")
    end
    return mp.INFECTED
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
