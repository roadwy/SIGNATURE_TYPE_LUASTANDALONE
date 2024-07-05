local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(this_sigattrlog[1].utf8p2)
    L0_0 = L1_1
  end
end
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(this_sigattrlog[2].utf8p2)
    L0_0 = L1_1
  end
end
if L0_0 ~= nil then
  L1_1 = StringEndsWith
  L1_1 = L1_1(L0_0, ".vbs")
  if not L1_1 then
    L1_1 = StringEndsWith
    L1_1 = L1_1(L0_0, ".js")
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.ContextualExpandEnvironmentVariables
    L1_1 = L1_1(L0_0)
    if IsKeyInRollingQueue("CC_filelist", L1_1) and sysio.IsFileExists(L1_1) then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
