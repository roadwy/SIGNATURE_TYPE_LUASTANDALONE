local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p2
end
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[3].utf8p2
end
if this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[4].utf8p2
end
if this_sigattrlog[5].matched and this_sigattrlog[5].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[5].utf8p2
end
if this_sigattrlog[6].matched and this_sigattrlog[6].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[6].utf8p2
end
if this_sigattrlog[7].matched and this_sigattrlog[7].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[7].utf8p2
end
if this_sigattrlog[8].matched and this_sigattrlog[8].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[8].utf8p2
end
if this_sigattrlog[9].matched and this_sigattrlog[9].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[9].utf8p2
end
if this_sigattrlog[10].matched and this_sigattrlog[10].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[10].utf8p2
end
if this_sigattrlog[11].matched and this_sigattrlog[11].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[11].utf8p2
end
if this_sigattrlog[12].matched and this_sigattrlog[12].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[12].utf8p2
end
if this_sigattrlog[13].matched and this_sigattrlog[13].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[13].utf8p2
end
if this_sigattrlog[14].matched and this_sigattrlog[14].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[14].utf8p2
end
if this_sigattrlog[15].matched and this_sigattrlog[15].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[15].utf8p2
end
if not string.match(L0_0, "%Wvar $password[%W$]") and not string.match(L0_0, "%Wpassword[%W$]") and not string.match(L0_0, "%W-p[%W$]") and not string.match(L0_0, "%Wpass[%W$]") and not string.match(L0_0, "%Wuser[%W$]") and not string.match(L0_0, "%Wcredentials[%W$]") and not string.match(L0_0, "%Wpwd[%W$]") and not string.match(L0_0, "%Wkey[%W$]") and not string.match(L0_0, "%Wmysql[%W$]") and not string.match(L0_0, "%Wroot[%W$]") and not string.match(L0_0, "%Wmysql[%W$]") and not string.match(L0_0, "%Wtelnet[%W$]") and not string.match(L0_0, "%Wssh[%W$]") and not string.match(L0_0, "%Wroot[%W$]") then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1552.001", "CredentialAccess")
return mp.INFECTED
