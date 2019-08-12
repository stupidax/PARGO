Utils = {}

-- Recursive function that copy a table and the tables of his tables etc.
local function clone(obj, seen)
  if type(obj) ~= 'table' then return obj end
  if seen and seen[obj] then return seen[obj] end
  local s = seen or {}
  local res = setmetatable({}, getmetatable(obj))
  s[obj] = res
  for k, v in pairs(obj) do res[clone(k, s)] = clone(v, s) end
  return res
end

Utils.clone = clone

return Utils