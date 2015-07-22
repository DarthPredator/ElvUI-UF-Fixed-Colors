local E, L, V, P, G = unpack(ElvUI);
local UFF = E:GetModule("UF_FixedColors")
local UF = E:GetModule('UnitFrames')

function UFF:GetOptions()
	E.Options.args.unitframe.args.UFF = {
		type = "group",
		name = L["Fixed Health Colors"],
		order = 7,
		childGroups = "select",
		disabled = function() return not E.private.unitframe.enable end,
		args = {
			player = {
				type = "group",
				name = L["Player Frame"],
				order = 1,
				args = {
					enable = {
						type = 'toggle',
						order = 1,
						name = L["Enable"],
						get = function(info) return E.db.unitframe.units.player.uff.enabled end,
						set = function(info, value) E.db.unitframe.units.player.uff.enabled = value; UF:CreateAndUpdateUF('player'); end,
					},
					good = {
						type = "color",
						order = 2,
						name = L["Good"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.player.uff[ info[#info] ]
							local d = P.unitframe.units.player.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.player.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.player.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('player');
						end,
					},
					neutral = {
						type = "color",
						order = 3,
						name = L["Neutral"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.player.uff[ info[#info] ]
							local d = P.unitframe.units.player.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.player.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.player.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('player');
						end,
					},
					bad = {
						type = "color",
						order = 4,
						name = L["Bad"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.player.uff[ info[#info] ]
							local d = P.unitframe.units.player.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.player.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.player.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('player');
						end,
					},
					onlylower = {
						type = 'toggle',
						order = 5,
						name = L["Only Lower"],
						desc = L["Use only lower breakpoint and use bad color when health is below it."],
						get = function(info) return E.db.unitframe.units.player.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.player.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('player'); end,
					},
					upper = {
						order = 6,
						name = L["Upper breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.player.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.player.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('player'); end,
					},
					lower = {
						order = 7,
						name = L["Lower breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.player.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.player.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('player'); end,
					},
				}
			},
			pet = {
				type = "group",
				name = L["Pet Frame"],
				order = 2,
				args = {
					enable = {
						type = 'toggle',
						order = 1,
						name = L["Enable"],
						get = function(info) return E.db.unitframe.units.pet.uff.enabled end,
						set = function(info, value) E.db.unitframe.units.pet.uff.enabled = value; UF:CreateAndUpdateUF('pet'); end,
					},
					good = {
						type = "color",
						order = 2,
						name = L["Good"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.pet.uff[ info[#info] ]
							local d = P.unitframe.units.pet.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.pet.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.pet.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('pet');
						end,
					},
					neutral = {
						type = "color",
						order = 3,
						name = L["Neutral"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.pet.uff[ info[#info] ]
							local d = P.unitframe.units.pet.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.pet.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.pet.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('pet');
						end,
					},
					bad = {
						type = "color",
						order = 4,
						name = L["Bad"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.pet.uff[ info[#info] ]
							local d = P.unitframe.units.pet.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.pet.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.pet.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('pet');
						end,
					},
					onlylower = {
						type = 'toggle',
						order = 5,
						name = L["Only Lower"],
						desc = L["Use only lower breakpoint and use bad color when health is below it."],
						get = function(info) return E.db.unitframe.units.pet.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.pet.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('pet'); end,
					},
					upper = {
						order = 6,
						name = L["Upper breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.pet.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.pet.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('pet'); end,
					},
					lower = {
						order = 7,
						name = L["Lower breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.pet.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.pet.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('pet'); end,
					},
				}
			},
			pettarget = {
				type = "group",
				name = L["PetTarget Frame"],
				order = 3,
				args = {
					enable = {
						type = 'toggle',
						order = 1,
						name = L["Enable"],
						get = function(info) return E.db.unitframe.units.pettarget.uff.enabled end,
						set = function(info, value) E.db.unitframe.units.pettarget.uff.enabled = value; UF:CreateAndUpdateUF('pettarget'); end,
					},
					good = {
						type = "color",
						order = 2,
						name = L["Good"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.pettarget.uff[ info[#info] ]
							local d = P.unitframe.units.pettarget.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.pettarget.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.pettarget.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('pettarget');
						end,
					},
					neutral = {
						type = "color",
						order = 3,
						name = L["Neutral"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.pettarget.uff[ info[#info] ]
							local d = P.unitframe.units.pettarget.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.pettarget.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.pettarget.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('pettarget');
						end,
					},
					bad = {
						type = "color",
						order = 4,
						name = L["Bad"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.pettarget.uff[ info[#info] ]
							local d = P.unitframe.units.pettarget.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.pettarget.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.pettarget.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('pettarget');
						end,
					},
					onlylower = {
						type = 'toggle',
						order = 5,
						name = L["Only Lower"],
						desc = L["Use only lower breakpoint and use bad color when health is below it."],
						get = function(info) return E.db.unitframe.units.pettarget.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.pettarget.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('pettarget'); end,
					},
					upper = {
						order = 6,
						name = L["Upper breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.pettarget.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.pettarget.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('pettarget'); end,
					},
					lower = {
						order = 7,
						name = L["Lower breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.pettarget.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.pettarget.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('pettarget'); end,
					},
				}
			},
			target = {
				type = "group",
				name = L["Target Frame"],
				order = 4,
				args = {
					enable = {
						type = 'toggle',
						order = 1,
						name = L["Enable"],
						get = function(info) return E.db.unitframe.units.target.uff.enabled end,
						set = function(info, value) E.db.unitframe.units.target.uff.enabled = value; UF:CreateAndUpdateUF('target'); end,
					},
					good = {
						type = "color",
						order = 2,
						name = L["Good"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.target.uff[ info[#info] ]
							local d = P.unitframe.units.target.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.target.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.target.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('target');
						end,
					},
					neutral = {
						type = "color",
						order = 3,
						name = L["Neutral"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.target.uff[ info[#info] ]
							local d = P.unitframe.units.target.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.target.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.target.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('target');
						end,
					},
					bad = {
						type = "color",
						order = 4,
						name = L["Bad"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.target.uff[ info[#info] ]
							local d = P.unitframe.units.target.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.target.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.target.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('target');
						end,
					},
					onlylower = {
						type = 'toggle',
						order = 5,
						name = L["Only Lower"],
						desc = L["Use only lower breakpoint and use bad color when health is below it."],
						get = function(info) return E.db.unitframe.units.target.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.target.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('target'); end,
					},
					upper = {
						order = 6,
						name = L["Upper breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.target.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.target.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('target'); end,
					},
					lower = {
						order = 7,
						name = L["Lower breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.target.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.target.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('target'); end,
					},
				}
			},
			targettarget = {
				type = "group",
				name = L["TargetTarget Frame"],
				order = 5,
				args = {
					enable = {
						type = 'toggle',
						order = 1,
						name = L["Enable"],
						get = function(info) return E.db.unitframe.units.targettarget.uff.enabled end,
						set = function(info, value) E.db.unitframe.units.targettarget.uff.enabled = value; UF:CreateAndUpdateUF('targettarget'); end,
					},
					good = {
						type = "color",
						order = 2,
						name = L["Good"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.targettarget.uff[ info[#info] ]
							local d = P.unitframe.units.targettarget.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.targettarget.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.targettarget.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('targettarget');
						end,
					},
					neutral = {
						type = "color",
						order = 3,
						name = L["Neutral"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.targettarget.uff[ info[#info] ]
							local d = P.unitframe.units.targettarget.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.targettarget.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.targettarget.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('targettarget');
						end,
					},
					bad = {
						type = "color",
						order = 4,
						name = L["Bad"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.targettarget.uff[ info[#info] ]
							local d = P.unitframe.units.targettarget.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.targettarget.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.targettarget.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('targettarget');
						end,
					},
					onlylower = {
						type = 'toggle',
						order = 5,
						name = L["Only Lower"],
						desc = L["Use only lower breakpoint and use bad color when health is below it."],
						get = function(info) return E.db.unitframe.units.targettarget.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.targettarget.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('targettarget'); end,
					},
					upper = {
						order = 6,
						name = L["Upper breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.targettarget.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.targettarget.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('targettarget'); end,
					},
					lower = {
						order = 7,
						name = L["Lower breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.targettarget.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.targettarget.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('targettarget'); end,
					},
				}
			},
			focus = {
				type = "group",
				name = L["Focus Frame"],
				order = 6,
				args = {
					enable = {
						type = 'toggle',
						order = 1,
						name = L["Enable"],
						get = function(info) return E.db.unitframe.units.focus.uff.enabled end,
						set = function(info, value) E.db.unitframe.units.focus.uff.enabled = value; UF:CreateAndUpdateUF('focus'); end,
					},
					good = {
						type = "color",
						order = 2,
						name = L["Good"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.focus.uff[ info[#info] ]
							local d = P.unitframe.units.focus.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.focus.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.focus.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('focus');
						end,
					},
					neutral = {
						type = "color",
						order = 3,
						name = L["Neutral"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.focus.uff[ info[#info] ]
							local d = P.unitframe.units.focus.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.focus.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.focus.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('focus');
						end,
					},
					bad = {
						type = "color",
						order = 4,
						name = L["Bad"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.focus.uff[ info[#info] ]
							local d = P.unitframe.units.focus.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.focus.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.focus.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('focus');
						end,
					},
					onlylower = {
						type = 'toggle',
						order = 5,
						name = L["Only Lower"],
						desc = L["Use only lower breakpoint and use bad color when health is below it."],
						get = function(info) return E.db.unitframe.units.focus.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.focus.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('focus'); end,
					},
					upper = {
						order = 6,
						name = L["Upper breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.focus.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.focus.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('focus'); end,
					},
					lower = {
						order = 7,
						name = L["Lower breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.focus.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.focus.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('focus'); end,
					},
				}
			},
			focustarget = {
				type = "group",
				name = L["FocusTarget Frame"],
				order = 7,
				args = {
					enable = {
						type = 'toggle',
						order = 1,
						name = L["Enable"],
						get = function(info) return E.db.unitframe.units.focustarget.uff.enabled end,
						set = function(info, value) E.db.unitframe.units.focustarget.uff.enabled = value; UF:CreateAndUpdateUF('focustarget'); end,
					},
					good = {
						type = "color",
						order = 2,
						name = L["Good"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.focustarget.uff[ info[#info] ]
							local d = P.unitframe.units.focustarget.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.focustarget.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.focustarget.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('focustarget');
						end,
					},
					neutral = {
						type = "color",
						order = 3,
						name = L["Neutral"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.focustarget.uff[ info[#info] ]
							local d = P.unitframe.units.focustarget.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.focustarget.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.focustarget.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('focustarget');
						end,
					},
					bad = {
						type = "color",
						order = 4,
						name = L["Bad"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.focustarget.uff[ info[#info] ]
							local d = P.unitframe.units.focustarget.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.focustarget.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.focustarget.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUF('focustarget');
						end,
					},
					onlylower = {
						type = 'toggle',
						order = 5,
						name = L["Only Lower"],
						desc = L["Use only lower breakpoint and use bad color when health is below it."],
						get = function(info) return E.db.unitframe.units.focustarget.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.focustarget.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('focustarget'); end,
					},
					upper = {
						order = 6,
						name = L["Upper breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.focustarget.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.focustarget.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('focustarget'); end,
					},
					lower = {
						order = 7,
						name = L["Lower breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.focustarget.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.focustarget.uff[ info[#info] ] = value; UF:CreateAndUpdateUF('focustarget'); end,
					},
				}
			},
			party = {
				type = "group",
				name = L["Party Frames"],
				order = 8,
				args = {
					enable = {
						type = 'toggle',
						order = 1,
						name = L["Enable"],
						get = function(info) return E.db.unitframe.units.party.uff.enabled end,
						set = function(info, value) E.db.unitframe.units.party.uff.enabled = value; UF:CreateAndUpdateHeaderGroup('party') end,
					},
					good = {
						type = "color",
						order = 2,
						name = L["Good"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.party.uff[ info[#info] ]
							local d = P.unitframe.units.party.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.party.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.party.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateHeaderGroup('party')
						end,
					},
					neutral = {
						type = "color",
						order = 3,
						name = L["Neutral"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.party.uff[ info[#info] ]
							local d = P.unitframe.units.party.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.party.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.party.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateHeaderGroup('party')
						end,
					},
					bad = {
						type = "color",
						order = 4,
						name = L["Bad"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.party.uff[ info[#info] ]
							local d = P.unitframe.units.party.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.party.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.party.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateHeaderGroup('party')
						end,
					},
					onlylower = {
						type = 'toggle',
						order = 5,
						name = L["Only Lower"],
						desc = L["Use only lower breakpoint and use bad color when health is below it."],
						get = function(info) return E.db.unitframe.units.party.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.party.uff[ info[#info] ] = value; UF:CreateAndUpdateHeaderGroup('party'); end,
					},
					upper = {
						order = 6,
						name = L["Upper breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.party.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.party.uff[ info[#info] ] = value; UF:CreateAndUpdateHeaderGroup('party') end,
					},
					lower = {
						order = 7,
						name = L["Lower breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.party.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.party.uff[ info[#info] ] = value; UF:CreateAndUpdateHeaderGroup('party') end,
					},
				}
			},
			raid = {
				type = "group",
				name = L["Raid Frames"],
				order = 9,
				args = {
					enable = {
						type = 'toggle',
						order = 1,
						name = L["Enable"],
						get = function(info) return E.db.unitframe.units.raid.uff.enabled end,
						set = function(info, value) E.db.unitframe.units.raid.uff.enabled = value; UF:CreateAndUpdateHeaderGroup('raid') end,
					},
					good = {
						type = "color",
						order = 2,
						name = L["Good"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.raid.uff[ info[#info] ]
							local d = P.unitframe.units.raid.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.raid.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.raid.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateHeaderGroup('raid')
						end,
					},
					neutral = {
						type = "color",
						order = 3,
						name = L["Neutral"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.raid.uff[ info[#info] ]
							local d = P.unitframe.units.raid.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.raid.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.raid.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateHeaderGroup('raid')
						end,
					},
					bad = {
						type = "color",
						order = 4,
						name = L["Bad"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.raid.uff[ info[#info] ]
							local d = P.unitframe.units.raid.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.raid.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.raid.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateHeaderGroup('raid')
						end,
					},
					onlylower = {
						type = 'toggle',
						order = 5,
						name = L["Only Lower"],
						desc = L["Use only lower breakpoint and use bad color when health is below it."],
						get = function(info) return E.db.unitframe.units.raid.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.raid.uff[ info[#info] ] = value; UF:CreateAndUpdateHeaderGroup('raid'); end,
					},
					upper = {
						order = 6,
						name = L["Upper breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.raid.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.raid.uff[ info[#info] ] = value; UF:CreateAndUpdateHeaderGroup('raid') end,
					},
					lower = {
						order = 7,
						name = L["Lower breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.raid.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.raid.uff[ info[#info] ] = value; UF:CreateAndUpdateHeaderGroup('raid') end,
					},
				}
			},
			raid40 = {
				type = "group",
				name = L["Raid40 Frames"],
				order = 10,
				args = {
					enable = {
						type = 'toggle',
						order = 1,
						name = L["Enable"],
						get = function(info) return E.db.unitframe.units.raid40.uff.enabled end,
						set = function(info, value) E.db.unitframe.units.raid40.uff.enabled = value; UF:CreateAndUpdateHeaderGroup('raid40') end,
					},
					good = {
						type = "color",
						order = 2,
						name = L["Good"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.raid40.uff[ info[#info] ]
							local d = P.unitframe.units.raid40.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.raid40.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.raid40.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateHeaderGroup('raid40')
						end,
					},
					neutral = {
						type = "color",
						order = 3,
						name = L["Neutral"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.raid40.uff[ info[#info] ]
							local d = P.unitframe.units.raid40.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.raid40.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.raid40.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateHeaderGroup('raid40')
						end,
					},
					bad = {
						type = "color",
						order = 4,
						name = L["Bad"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.raid40.uff[ info[#info] ]
							local d = P.unitframe.units.raid40.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.raid40.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.raid40.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateHeaderGroup('raid40')
						end,
					},
					onlylower = {
						type = 'toggle',
						order = 5,
						name = L["Only Lower"],
						desc = L["Use only lower breakpoint and use bad color when health is below it."],
						get = function(info) return E.db.unitframe.units.raid40.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.raid40.uff[ info[#info] ] = value; UF:CreateAndUpdateHeaderGroup('raid40'); end,
					},
					upper = {
						order = 6,
						name = L["Upper breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.raid40.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.raid40.uff[ info[#info] ] = value; UF:CreateAndUpdateHeaderGroup('raid40') end,
					},
					lower = {
						order = 7,
						name = L["Lower breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.raid40.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.raid40.uff[ info[#info] ] = value; UF:CreateAndUpdateHeaderGroup('raid40') end,
					},
				}
			},
			--[[raidpet = {
				type = "group",
				name = L["Raid Pet Frames"],
				order = 11,
				args = {
					enable = {
						type = 'toggle',
						order = 1,
						name = L["Enable"],
						get = function(info) return E.db.unitframe.units.raidpet.uff.enabled end,
						set = function(info, value) E.db.unitframe.units.raidpet.uff.enabled = value; UF:CreateAndUpdateHeaderGroup('raidpet', nil, nil, true) end,
					},
					good = {
						type = "color",
						order = 2,
						name = L["Good"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.raidpet.uff[ info[#info] ]
							local d = P.unitframe.units.raidpet.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.raidpet.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.raidpet.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateHeaderGroup('raidpet', nil, nil, true)
						end,
					},
					neutral = {
						type = "color",
						order = 3,
						name = L["Neutral"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.raidpet.uff[ info[#info] ]
							local d = P.unitframe.units.raidpet.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.raidpet.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.raidpet.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateHeaderGroup('raidpet', nil, nil, true)
						end,
					},
					bad = {
						type = "color",
						order = 4,
						name = L["Bad"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.raidpet.uff[ info[#info] ]
							local d = P.unitframe.units.raidpet.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.raidpet.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.raidpet.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateHeaderGroup('raidpet', nil, nil, true)
						end,
					},
					upper = {
						order = 5,
						name = L["Upper breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.raidpet.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.raidpet.uff[ info[#info] ] = value; UF:CreateAndUpdateHeaderGroup('raidpet', nil, nil, true) end,
					},
					lower = {
						order = 6,
						name = L["Lower breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.raidpet.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.raidpet.uff[ info[#info] ] = value; UF:CreateAndUpdateHeaderGroup('raidpet', nil, nil, true) end,
					},
				}
			},]]
			boss = {
				type = "group",
				name = L["Boss Frames"],
				order = 12,
				args = {
					enable = {
						type = 'toggle',
						order = 1,
						name = L["Enable"],
						get = function(info) return E.db.unitframe.units.boss.uff.enabled end,
						set = function(info, value) E.db.unitframe.units.boss.uff.enabled = value; UF:CreateAndUpdateUFGroup('boss', MAX_BOSS_FRAMES) end,
					},
					good = {
						type = "color",
						order = 2,
						name = L["Good"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.boss.uff[ info[#info] ]
							local d = P.unitframe.units.boss.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.boss.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.boss.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUFGroup('boss', MAX_BOSS_FRAMES)
						end,
					},
					neutral = {
						type = "color",
						order = 3,
						name = L["Neutral"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.boss.uff[ info[#info] ]
							local d = P.unitframe.units.boss.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.boss.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.boss.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUFGroup('boss', MAX_BOSS_FRAMES)
						end,
					},
					bad = {
						type = "color",
						order = 4,
						name = L["Bad"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.boss.uff[ info[#info] ]
							local d = P.unitframe.units.boss.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.boss.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.boss.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUFGroup('boss', MAX_BOSS_FRAMES)
						end,
					},
					onlylower = {
						type = 'toggle',
						order = 5,
						name = L["Only Lower"],
						desc = L["Use only lower breakpoint and use bad color when health is below it."],
						get = function(info) return E.db.unitframe.units.boss.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.boss.uff[ info[#info] ] = value; UF:CreateAndUpdateUFGroup('boss', MAX_BOSS_FRAMES) end,
					},
					upper = {
						order = 6,
						name = L["Upper breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.boss.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.boss.uff[ info[#info] ] = value; UF:CreateAndUpdateUFGroup('boss', MAX_BOSS_FRAMES) end,
					},
					lower = {
						order = 7,
						name = L["Lower breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.boss.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.boss.uff[ info[#info] ] = value; UF:CreateAndUpdateUFGroup('boss', MAX_BOSS_FRAMES) end,
					},
				}
			},
			arena = {
				type = "group",
				name = L["Arena Frames"],
				order = 13,
				args = {
					enable = {
						type = 'toggle',
						order = 1,
						name = L["Enable"],
						get = function(info) return E.db.unitframe.units.arena.uff.enabled end,
						set = function(info, value) E.db.unitframe.units.arena.uff.enabled = value; UF:CreateAndUpdateUFGroup('arena', 5) end,
					},
					good = {
						type = "color",
						order = 2,
						name = L["Good"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.arena.uff[ info[#info] ]
							local d = P.unitframe.units.arena.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.arena.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.arena.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUFGroup('arena', 5)
						end,
					},
					neutral = {
						type = "color",
						order = 3,
						name = L["Neutral"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.arena.uff[ info[#info] ]
							local d = P.unitframe.units.arena.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.arena.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.arena.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUFGroup('arena', 5)
						end,
					},
					bad = {
						type = "color",
						order = 4,
						name = L["Bad"],
						hasAlpha = false,
						get = function(info)
							local t = E.db.unitframe.units.arena.uff[ info[#info] ]
							local d = P.unitframe.units.arena.uff[ info[#info] ]
							return t.r, t.g, t.b, t.a, d.r, d.g, d.b
						end,
						set = function(info, r, g, b)
							E.db.unitframe.units.arena.uff[ info[#info] ] = {}
							local t = E.db.unitframe.units.arena.uff[ info[#info] ]
							t.r, t.g, t.b = r, g, b
							UF:CreateAndUpdateUFGroup('arena', 5)
						end,
					},
					onlylower = {
						type = 'toggle',
						order = 5,
						name = L["Only Lower"],
						desc = L["Use only lower breakpoint and use bad color when health is below it."],
						get = function(info) return E.db.unitframe.units.arena.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.arena.uff[ info[#info] ] = value; UF:CreateAndUpdateUFGroup('arena', 5) end,
					},
					upper = {
						order = 6,
						name = L["Upper breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.arena.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.arena.uff[ info[#info] ] = value; UF:CreateAndUpdateUFGroup('arena', 5) end,
					},
					lower = {
						order = 7,
						name = L["Lower breakpoint"],
						type = "range",
						isPercent = true,
						min = 0, max = 1, step = 0.01,
						get = function(info) return E.db.unitframe.units.arena.uff[ info[#info] ] end,
						set = function(info, value) E.db.unitframe.units.arena.uff[ info[#info] ] = value; UF:CreateAndUpdateUFGroup('arena', 5) end,
					},
				}
			},
		},
	}
end