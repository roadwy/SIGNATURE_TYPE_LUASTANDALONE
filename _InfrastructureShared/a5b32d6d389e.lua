local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = this_sigattrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.matched
    if L0_0 then
      L0_0 = this_sigattrlog
      L0_0 = L0_0[4]
      L0_0 = L0_0.matched
      if L0_0 then
        L0_0 = this_sigattrlog
        L0_0 = L0_0[5]
        L0_0 = L0_0.matched
        if L0_0 then
          L0_0 = this_sigattrlog
          L0_0 = L0_0[6]
          L0_0 = L0_0.matched
          if L0_0 then
            L0_0 = this_sigattrlog
            L0_0 = L0_0[7]
            L0_0 = L0_0.matched
            if L0_0 then
              L0_0 = this_sigattrlog
              L0_0 = L0_0[8]
              L0_0 = L0_0.matched
            end
          end
        end
      end
    end
  end
end
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = ""
if this_sigattrlog[1].utf8p1 == nil then
  return mp.CLEAN
end
L0_0 = string.match(string.lower(this_sigattrlog[1].utf8p1), "(.+)\\")
if L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
if this_sigattrlog[2].utf8p1 == nil then
  return mp.CLEAN
end
if L0_0 ~= string.match(string.lower(this_sigattrlog[2].utf8p1), "(.+)\\") then
  return mp.CLEAN
end
if this_sigattrlog[3].utf8p1 == nil then
  return mp.CLEAN
end
if L0_0 ~= string.match(string.lower(this_sigattrlog[3].utf8p1), "(.+)\\") then
  return mp.CLEAN
end
if this_sigattrlog[4].utf8p1 == nil then
  return mp.CLEAN
end
if L0_0 ~= string.match(string.lower(this_sigattrlog[4].utf8p1), "(.+)\\") then
  return mp.CLEAN
end
if this_sigattrlog[5].utf8p1 == nil then
  return mp.CLEAN
end
if L0_0 ~= string.match(string.lower(this_sigattrlog[5].utf8p1), "(.+)\\") then
  return mp.CLEAN
end
if this_sigattrlog[6].utf8p1 == nil then
  return mp.CLEAN
end
if L0_0 ~= string.match(string.lower(this_sigattrlog[6].utf8p1), "(.+)\\") then
  return mp.CLEAN
end
if this_sigattrlog[7].utf8p1 == nil then
  return mp.CLEAN
end
if L0_0 ~= string.match(string.lower(this_sigattrlog[7].utf8p1), "(.+)\\") then
  return mp.CLEAN
end
if this_sigattrlog[8].utf8p1 == nil then
  return mp.CLEAN
end
if L0_0 ~= string.match(string.lower(this_sigattrlog[8].utf8p1), "(.+)\\") then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(bm.get_imagepath(), "RunsDestructiveCMDsParentBlock") then
  return mp.CLEAN
end
return mp.INFECTED
