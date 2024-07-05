local L0_0, L1_1, L2_2
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p1 ~= nil then
  L1_1 = this_sigattrlog[1].utf8p1
  L2_2 = string.match(L1_1, "\\([^\\]+)$")
end
if L2_2 ~= nil then
  if #L2_2 ~= 20 then
    return mp.CLEAN
  end
  if sysio.IsFileExists(L1_1) then
    L0_0 = sysio.GetFileSize(L1_1)
    if L0_0 < 6291456 or L0_0 > 8388608 then
      return mp.CLEAN
    end
    L1_1 = string.lower(L1_1)
    if L1_1:match("temp\\([a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z])\\") ~= nil then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
