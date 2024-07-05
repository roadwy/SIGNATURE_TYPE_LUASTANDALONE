local L0_0, L1_1
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p1)
elseif this_sigattrlog[3].matched and this_sigattrlog[3].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[3].utf8p1)
elseif this_sigattrlog[4].matched and this_sigattrlog[4].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[4].utf8p1)
elseif this_sigattrlog[5].matched and this_sigattrlog[5].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[5].utf8p1)
elseif this_sigattrlog[6].matched and this_sigattrlog[6].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[6].utf8p1)
elseif this_sigattrlog[7].matched and this_sigattrlog[7].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[7].utf8p1)
elseif this_sigattrlog[8].matched and this_sigattrlog[8].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[8].utf8p1)
elseif this_sigattrlog[9].matched and this_sigattrlog[9].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[9].utf8p1)
end
if string.match(L0_0, "/%.[^/]+$") then
  if this_sigattrlog[10].matched and this_sigattrlog[10].utf8p1 ~= nil then
    L1_1 = string.lower(this_sigattrlog[10].utf8p1)
  elseif this_sigattrlog[11].matched and this_sigattrlog[11].utf8p1 ~= nil then
    L1_1 = string.lower(this_sigattrlog[11].utf8p1)
  elseif this_sigattrlog[12].matched and this_sigattrlog[12].utf8p1 ~= nil then
    L1_1 = string.lower(this_sigattrlog[12].utf8p1)
  elseif this_sigattrlog[13].matched and this_sigattrlog[13].utf8p1 ~= nil then
    L1_1 = string.lower(this_sigattrlog[13].utf8p1)
  end
  if L0_0 == L1_1 then
    addRelatedProcess()
    TrackPidAndTechniqueBM("BM", "T1564", "DefenseEvasion_Hiddenfiles_droppedhidden")
    return mp.INFECTED
  end
end
return mp.CLEAN
