local L0_0, L1_1, L2_2, L3_3
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
L2_2 = L2_2(L3_3, "io.memorystream")
if L2_2 then
else
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
    L2_2 = L2_2(L3_3, "io.memorystream")
    if L2_2 then
      L0_0 = L1_1
    end
  else
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = {L3_3, "Seek(0,0)"}
L3_3 = "chocolatey"
L3_3 = contains
L3_3 = L3_3(L0_0, L2_2)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = nil
if L0_0 ~= nil then
  L3_3 = string.match(L0_0:lower(), "%[convert%]%:%:frombase64string%(%'?\"?([a-z0-9/%+=]+)")
  if L3_3 ~= nil and #L3_3 < 30 then
    return mp.CLEAN
  end
end
if contains(L0_0, "convert]::frombase64string(") and contains(L0_0, "io.streamreader") and contains(L0_0, "io.compression.gzipstream") and contains(L0_0, "::decompress") and contains(L0_0, "readtoend()") then
  return mp.INFECTED
end
return mp.CLEAN
