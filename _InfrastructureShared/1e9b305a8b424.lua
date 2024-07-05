local L0_0
if this_sigattrlog[13].matched then
  L0_0 = string.lower(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[13].utf8p2))
  if string.match(L0_0, "/addfile [^ ]+ \\\\localhost\\[^ ]* [^ ]+") ~= nil then
    return mp.INFECTED
  elseif string.match(L0_0, "/addfile [^ ]+ \\\\127%.0%.0%.1\\[^ ]* [^ ]+") ~= nil then
    return mp.INFECTED
  elseif string.match(L0_0, "/addfile [^ ]+ .:\\[^ ]* [^ ]+") ~= nil then
    return mp.INFECTED
  else
    return mp.CLEAN
  end
elseif this_sigattrlog[14].matched then
  L0_0 = string.lower(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[14].utf8p2))
  if string.match(L0_0, "/replaceremoteprefix [^ ]+ [^ ]+ \\\\localhost\\[^ ]*") ~= nil then
    return mp.INFECTED
  elseif string.match(L0_0, "/replaceremoteprefix [^ ]+ [^ ]+ \\\\127%.0%.0%.1\\[^ ]*") ~= nil then
    return mp.INFECTED
  elseif string.match(L0_0, "/replaceremoteprefix [^ ]+ [^ ]+ .:\\[^ ]*") ~= nil then
    return mp.INFECTED
  else
    return mp.CLEAN
  end
elseif this_sigattrlog[15].matched then
  L0_0 = string.lower(mp.ContextualExpandEnvironmentVariables(this_sigattrlog[15].utf8p2))
  if string.match(L0_0, "http[s]?%:%/%/") ~= nil then
    return mp.INFECTED
  else
    return mp.CLEAN
  end
end
return mp.CLEAN
