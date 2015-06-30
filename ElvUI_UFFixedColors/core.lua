local E, L, V, P, G = unpack(ElvUI);
local UF = E:GetModule('UnitFrames');
local EP = LibStub("LibElvUIPlugin-1.0")
local UFF = E:NewModule("UF_FixedColors", 'AceHook-3.0')
local addon = ...

local find = string.find

local frames = {
	ElvUF_Player,
	ElvUF_Pet,
	ElvUF_PetTarget,
	ElvUF_Target,
	ElvUF_TargetTarget,
	ElvUF_Focus,
	ElvUF_FocusTarget,
}

local function FramePostUpdate(self, unit, min, max)
	local db = UF.db['units'][unit]
	if not db.uff.enabled then return end
	local upper = db.uff.upper
	local lower = db.uff.lower
	if upper < lower then upper = .75; lower = .3 end
	local point = min/max
	local color
	if point >= upper then
		color = db.uff.good
	elseif point >= lower and point < upper then
		color = db.uff.neutral
	else
		color = db.uff.bad
	end
	self:SetStatusBarColor(color.r, color.g, color.b)
end

local groups = {
	"boss",
	"arena",
	"party",
	"raidpet",
	"raid40",
	"raid",
}

local function GroupPostUpdate(self, unit, min, max)
	local parent = self:GetParent()
	local header
	for i = 1, #groups do
		if parent:GetName():find(groups[i]:gsub("^%l", string.upper)) then header = groups[i]; break end
	end
	if not header then return end
	local db = UF.db['units'][header]
	if not db.uff.enabled then return end
	local upper = db.uff.upper
	local lower = db.uff.lower
	if parent.isForced then
		min = random(1, max)
		self:SetValue(min)
	end
	if upper < lower then upper = .75; lower = .3 end
	local point = min/max
	local color
	if point >= upper then
		color = db.uff.good
	elseif point >= lower and point < upper then
		color = db.uff.neutral
	else
		color = db.uff.bad
	end
	self:SetStatusBarColor(color.r, color.g, color.b)
end

function UFF:Initialize()
	if not E.private.unitframe.enable then return end
	for i = 1, #frames do
		hooksecurefunc(frames[i].Health, "PostUpdate", FramePostUpdate)
	end

	for name, header in pairs(UF.headers) do
		if name ~= "tank" and name ~= "assist" then
			for i = 1, header:GetNumChildren() do
				local group = select(i, header:GetChildren())
				for j = 1, group:GetNumChildren() do
					local frame = select(j, group:GetChildren())
					if frame and frame.Health then
						hooksecurefunc(frame.Health, "PostUpdate", function(self, unit, min, max) GroupPostUpdate(self, unit, min, max) end)
					end
				end
			end
		end
	end

	for name, header in pairs(UF.groupunits) do
		local frame = _G["ElvUF_"..name:gsub("^%l", string.upper)]
		if frame and frame.Health then
			hooksecurefunc(frame.Health, "PostUpdate", function(self, unit, min, max) GroupPostUpdate(self, unit, min, max) end)
		end
	end
	EP:RegisterPlugin(addon, UFF.GetOptions)
end

E:RegisterModule(UFF:GetName())