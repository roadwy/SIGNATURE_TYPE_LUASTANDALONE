local L0_0, L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.wp2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(this_sigattrlog[1].utf8p2)
    L0_0 = L1_1
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.wp2
    if L1_1 ~= nil then
      L1_1 = string
      L1_1 = L1_1.lower
      L1_1 = L1_1(this_sigattrlog[2].utf8p2)
      L0_0 = L1_1
    end
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.wp2
      if L1_1 ~= nil then
        L1_1 = string
        L1_1 = L1_1.lower
        L1_1 = L1_1(this_sigattrlog[3].utf8p2)
        L0_0 = L1_1
      end
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[4]
        L1_1 = L1_1.wp2
        if L1_1 ~= nil then
          L1_1 = string
          L1_1 = L1_1.lower
          L1_1 = L1_1(this_sigattrlog[4].utf8p2)
          L0_0 = L1_1
        end
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[5]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[5]
          L1_1 = L1_1.wp2
          if L1_1 ~= nil then
            L1_1 = string
            L1_1 = L1_1.lower
            L1_1 = L1_1(this_sigattrlog[5].utf8p2)
            L0_0 = L1_1
          end
        else
          L1_1 = this_sigattrlog
          L1_1 = L1_1[6]
          L1_1 = L1_1.matched
          if L1_1 then
            L1_1 = this_sigattrlog
            L1_1 = L1_1[6]
            L1_1 = L1_1.wp2
            if L1_1 ~= nil then
              L1_1 = string
              L1_1 = L1_1.lower
              L1_1 = L1_1(this_sigattrlog[6].utf8p2)
              L0_0 = L1_1
            end
          else
            L1_1 = this_sigattrlog
            L1_1 = L1_1[7]
            L1_1 = L1_1.matched
            if L1_1 then
              L1_1 = this_sigattrlog
              L1_1 = L1_1[7]
              L1_1 = L1_1.wp2
              if L1_1 ~= nil then
                L1_1 = string
                L1_1 = L1_1.lower
                L1_1 = L1_1(this_sigattrlog[7].utf8p2)
                L0_0 = L1_1
              end
            end
          end
        end
      end
    end
  end
end
if L0_0 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L1_1 = L1_1(L0_0, "copy-as-is", 1, true)
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L1_1 = L1_1(L0_0, "/usr/share/rear", 1, true)
      if L1_1 then
        L1_1 = mp
        L1_1 = L1_1.CLEAN
        return L1_1
      end
    end
  end
end
L1_1 = nil
if this_sigattrlog[9].matched and this_sigattrlog[9].wp2 ~= nil then
  L1_1 = string.lower(this_sigattrlog[9].utf8p2)
elseif this_sigattrlog[10].matched and this_sigattrlog[10].wp2 ~= nil then
  L1_1 = string.lower(this_sigattrlog[10].utf8p2)
end
if L1_1 and (string.match(L1_1, "%d+%.%d+%.%d+%.%d+") or string.find(L1_1, "bit.ly", 1, true) or string.find(L1_1, "goo.gl", 1, true) or string.find(L1_1, "telegram", 1, true) or string.find(L1_1, "dropbox", 1, true) or string.find(L1_1, "api.", 1, true) or string.find(L1_1, "ftp", 1, true)) then
  TrackPidAndTechniqueBM("BM", "T1048", "Exfiltration_Archive")
  addRelatedProcess()
  reportRelatedBmHits()
  RemediateProcessTreeForLinux()
  return mp.INFECTED
end
return mp.CLEAN
