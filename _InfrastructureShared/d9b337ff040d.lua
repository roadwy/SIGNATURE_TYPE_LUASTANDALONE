local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.utf8p2
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[5]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[5]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[6]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = this_sigattrlog
      L2_2 = L2_2[6]
      L2_2 = L2_2.utf8p2
      L1_1 = L1_1(L2_2)
      L0_0 = L1_1
    end
  end
end
if L0_0 ~= nil then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[7]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.len
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    if L1_1 > 3 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L1_1 = L1_1(L2_2, ".part", 1, true)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L2_2 = L0_0
        L1_1 = L1_1(L2_2, "/wiki/pages/", 1, true)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L2_2 = L0_0
          L1_1 = L1_1(L2_2, "/ee-help/help-pdfs/", 1, true)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L2_2 = L0_0
            L1_1 = L1_1(L2_2, "downloadcoursiercli", 1, true)
            if not L1_1 then
              L1_1 = string
              L1_1 = L1_1.find
              L2_2 = L0_0
              L1_1 = L1_1(L2_2, "/softwarepackages/", 1, true)
              if not L1_1 then
                L1_1 = string
                L1_1 = L1_1.find
                L2_2 = L0_0
                L1_1 = L1_1(L2_2, "\\motorola\\", 1, true)
                if not L1_1 then
                  L1_1 = string
                  L1_1 = L1_1.find
                  L2_2 = L0_0
                  L1_1 = L1_1(L2_2, "\\positron\\", 1, true)
                  if not L1_1 then
                    L1_1 = string
                    L1_1 = L1_1.find
                    L2_2 = L0_0
                    L1_1 = L1_1(L2_2, "\\bat4download\\", 1, true)
                  end
                end
              end
            end
          end
        end
      elseif L1_1 then
        L1_1 = mp
        L1_1 = L1_1.CLEAN
        return L1_1
      end
      L1_1 = mp
      L1_1 = L1_1.ContextualExpandEnvironmentVariables
      L2_2 = this_sigattrlog
      L2_2 = L2_2[7]
      L2_2 = L2_2.utf8p1
      L1_1 = L1_1(L2_2)
      L2_2 = mp
      L2_2 = L2_2.GetMotwHostUrlForFile
      L2_2 = L2_2(L1_1)
      if L2_2 then
        if string.find(L2_2, "download.windowsupdate.com", 1, true) or string.find(L2_2, "jquery.com", 1, true) or string.find(L2_2, "scm.dndev.net", 1, true) or string.find(L2_2, "mozilla.org", 1, true) or string.find(L2_2, "trendmicro.com", 1, true) or string.find(L2_2, "sharepoint.com", 1, true) or string.find(L2_2, "repo.anaconda.com/miniconda", 1, true) or string.find(L2_2, "openstreetmap.ru", 1, true) or string.find(L2_2, "honda.co.jp", 1, true) or string.find(L2_2, "google.com", 1, true) or string.find(L2_2, "google.com", 1, true) or string.find(L2_2, ".zscaler.", 1, true) or string.find(L2_2, "www.att.com", 1, true) or string.find(L2_2, "microsoft.com", 1, true) or string.find(L1_1, "aka.ms", 1, true) or string.find(L2_2, "fortinet.com", 1, true) or string.find(L2_2, "core.windows.net", 1, true) then
          return mp.CLEAN
        end
        if ({
          [".msu"] = true,
          [".msi"] = true,
          [".xml"] = true,
          [".cab"] = true,
          [".txt"] = true,
          [".mp4"] = true,
          [".gitignore"] = true,
          [".war"] = true,
          [".ts"] = true,
          [".zip"] = true,
          [".bz2"] = true,
          [".vdf"] = true,
          [".part"] = true,
          [".7z"] = true,
          [".html"] = true,
          [".ps1"] = true,
          [".gif"] = true,
          [".drift"] = true,
          [".ini"] = true,
          [".csv"] = true,
          [".mp3"] = true,
          [".sql"] = true
        })[string.sub(L1_1, -4)] or ({
          [".msu"] = true,
          [".msi"] = true,
          [".xml"] = true,
          [".cab"] = true,
          [".txt"] = true,
          [".mp4"] = true,
          [".gitignore"] = true,
          [".war"] = true,
          [".ts"] = true,
          [".zip"] = true,
          [".bz2"] = true,
          [".vdf"] = true,
          [".part"] = true,
          [".7z"] = true,
          [".html"] = true,
          [".ps1"] = true,
          [".gif"] = true,
          [".drift"] = true,
          [".ini"] = true,
          [".csv"] = true,
          [".mp3"] = true,
          [".sql"] = true
        })[string.sub(L1_1, -5)] or ({
          [".msu"] = true,
          [".msi"] = true,
          [".xml"] = true,
          [".cab"] = true,
          [".txt"] = true,
          [".mp4"] = true,
          [".gitignore"] = true,
          [".war"] = true,
          [".ts"] = true,
          [".zip"] = true,
          [".bz2"] = true,
          [".vdf"] = true,
          [".part"] = true,
          [".7z"] = true,
          [".html"] = true,
          [".ps1"] = true,
          [".gif"] = true,
          [".drift"] = true,
          [".ini"] = true,
          [".csv"] = true,
          [".mp3"] = true,
          [".sql"] = true
        })[string.sub(L1_1, -10)] or ({
          [".msu"] = true,
          [".msi"] = true,
          [".xml"] = true,
          [".cab"] = true,
          [".txt"] = true,
          [".mp4"] = true,
          [".gitignore"] = true,
          [".war"] = true,
          [".ts"] = true,
          [".zip"] = true,
          [".bz2"] = true,
          [".vdf"] = true,
          [".part"] = true,
          [".7z"] = true,
          [".html"] = true,
          [".ps1"] = true,
          [".gif"] = true,
          [".drift"] = true,
          [".ini"] = true,
          [".csv"] = true,
          [".mp3"] = true,
          [".sql"] = true
        })[string.sub(L1_1, -3)] then
          return mp.CLEAN
        end
        bm.add_related_string("bmurl", L2_2, bm.RelatedStringBMReport)
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
