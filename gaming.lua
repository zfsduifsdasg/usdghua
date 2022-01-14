local Util = {}

RS = game:GetService("RunService").RenderStepped

function Util:Tween(Obj, Dir, Style, Duration, Goal)
	local tweenService    = game:GetService("TweenService")
	local tweenInfo        = TweenInfo.new(
		Duration,
		Enum.EasingStyle[Style],
		Enum.EasingDirection[Dir]
	)
	local tween = tweenService:Create(Obj,tweenInfo,Goal)
	tween:Play()
	return tween
end

local l2 = game.Players.LocalPlayer



if l2:IsInGroup(6323134) then
	game.StarterGui:SetCore("SendNotification", {
		Title = "Whitelisted";
		Text = "Have fun!";
		Duration = "5";
	})

for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
	if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
		game:GetService("RunService").Heartbeat:connect(function()
			v.Velocity = Vector3.new(31,0,0)
		end)
	end
end
mode = 1
Bypass = "death"
loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
	if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
		game:GetService("RunService").Heartbeat:connect(function()
			v.Velocity = Vector3.new(0,30,0)
			wait(0.5)
		end)
	end
end
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
for i,v in pairs (char:GetChildren()) do
	if v:IsA("Accessory") then
		v.Handle.Massless = true
		v.Handle.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
	end
end
hed.Massless = true
hed.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
torso.Massless = true
torso.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
rarm.Massless = true
rarm.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
larm.Massless = true
larm.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
lleg.Massless = true
lleg.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
rleg.Massless = true
rleg.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
root.Massless = true
root.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
Bypass = "Death"
plr = game.Players.LocalPlayer
dead = false
char = plr.Character



bullet = workspace[plr.Name]["HumanoidRootPart"]
bullet.Transparency = 1
bhandle = bullet
bullet.Massless = true

mouse = plr:GetMouse()
head = char.Head
camera = workspace.CurrentCamera
lt = true
ltt = false

local function IsFirstPerson()
	return (head.CFrame.p - camera.CFrame.p).Magnitude < 1
end

bbv = Instance.new("BodyPosition",bhandle)
bbv.Position = char.Torso.CFrame.p



mouse.Button1Down:Connect(function()
	if dead == false then
		lt = false
		ltt = false
		bbav = Instance.new("BodyAngularVelocity",bhandle)
		bbav.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		bbav.P = 1000000000000000000000000000
		bbav.AngularVelocity = Vector3.new(10000000000000000000000000000000,100000000000000000000000000,100000000000000000)
		game:GetService("Debris"):AddItem(bbav,0.1)
		if game.Players:GetPlayerFromCharacter(mouse.Target.Parent) then
			if mouse.Target.Parent.Name == char.Name or mouse.Target.Parent.Name == "non" then return end
			--repeat 
			game:GetService("RunService").RenderStepped:Wait()
			bbv.Position = (CFrame.new(mouse.Target.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
			bhandle.Position = (CFrame.new(mouse.Target.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
			wait(1)
			--until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
		elseif game.Players:GetPlayerFromCharacter(mouse.Target.Parent.Parent) then
			if mouse.Target.Parent.Name == char.Name or mouse.Target.Parent.Name == "non" then return end
			--repeat 
			game:GetService("RunService").RenderStepped:Wait()
			bbv.Position = (CFrame.new(mouse.Target.Parent.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
			bhandle.Position = (CFrame.new(mouse.Target.Parent.Parent.HumanoidRootPart.CFrame.p,char.Torso.CFrame.p) * CFrame.new(0,0,0)).p
			wait(1)
			--until char.Humanoid.Health == 100 or char.Humanoid.Health == 0

		else
			-- repeat 
			game:GetService("RunService").RenderStepped:Wait()
			wait(1)
			--until char.Humanoid.Health == 100 or char.Humanoid.Health == 0
		end
		wait()
		lt = true
	end
end)

spawn(
	function()
		while true do
			game:GetService("RunService").Heartbeat:Wait()
			bullet.Velocity = Vector3.new(0,26,0)
		end
	end)

plr:GetMouse().Button1Down:Connect(function()
	attackingwithhrp = true	
end)


plr:GetMouse().Button1Up:Connect(function()
	attackingwithhrp = false
end)

plr:GetMouse().Button1Down:Connect(function()
	repeat wait() until attackingwithhrp == true
	repeat
		game:GetService("RunService").Heartbeat:Wait()
		if plr:GetMouse().Target ~= nil then
			bullet.Position = game:GetService("Players").LocalPlayer:GetMouse().Hit.p
		end
	until attackingwithhrp == false
end)






Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = workspace.non
Humanoid = Character:FindFirstChildOfClass("Humanoid")
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local sick = Instance.new("Sound",Character)
sick.Volume = 10
sick.TimePosition = 0
sick.PlaybackSpeed = 0
sick.Pitch = 1
sick.SoundId = "rbxassetid://2677233603"
sick.Looped = true
sick:Play()
local stopeverything = false
local shade = Color3.new(0,0,0)
IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

Animation_Speed = 3
Frame_Speed = 1 / 60
local Speed = 55
local SIZE = 1
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local ANIM = "Idle"
local ATTACK = false
local COMBO = 1
local Rooted = false
local SINE = 0
local CHANGE = 2 / Animation_Speed
local ROBLOXIDLEANIMATION = IT("Animation")
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "NAME"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local UNANCHOR = true
local KILLCOUNT = 0


ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end
function swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end
function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

local function weldBetween(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end


function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end

function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end

function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end

function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			coroutine.resume(coroutine.create(function()
				pcall(function()
					repeat if stopeverything then wait(HUGE) end Swait() until NEWSOUND.Playing == false
					NEWSOUND:Destroy()
				end)
			end))
		end
	end))
	return NEWSOUND
end

local rbw = Color3.fromRGB(math.random(1, 255), math.random(1, 255), math.random(1, 255))
local NAMEBILL = Instance.new("BillboardGui",Character)
NAMEBILL.AlwaysOnTop = true
NAMEBILL.Size = UDim2.new(7,35,3,15)
NAMEBILL.StudsOffset = Vector3.new(0,2,0)
NAMEBILL.MaxDistance = 0
NAMEBILL.Adornee = Head
NAMEBILL.Name = "NameBillboard"
local NAMEMODE = Instance.new("TextLabel",NAMEBILL)
NAMEMODE.BackgroundTransparency = 1
NAMEMODE.TextScaled = false
NAMEMODE.BorderSizePixel = 0
NAMEMODE.Text = "items missing or rejoin!"
NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]
NAMEMODE.TextSize = 75
NAMEMODE.TextStrokeTransparency = 0
NAMEMODE.Size = UDim2.new(1,0,0.5,0)
NAMEMODE.Parent = NAMEBILL
spawn(function() RainbowifyText(NAMEMODE) end)

local a,b = Color3.new(0,0,0),Color3.new(0.333333, 0, 0)

local GUN = CreatePart(0, Character, "SmoothPlastic", 0, 1, "Bright blue", "GunPart", VT(1.1, 1.1, 1.1),false)
local gunweld = CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, GUN, CF(0*SIZE,-.5*SIZE,0*SIZE), CF(0, 0, 0))
local gunz = "Starslayer Railgun"
local athp1 = Instance.new("Attachment",GUN)
local atho1 = Instance.new("Attachment",GUN)
if gunz then
	Character[gunz].Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp1
	Character[gunz].Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho1
	atho1.Rotation = Vector3.new(0, 180, 320)
	athp1.Position = Vector3.new(-.5, -1.5, 0)
end

local aura = CreatePart(0, Character, "SmoothPlastic", 0, 1, "Bright blue", "GunPart", VT(1.1, 1.1, 1.1),false)
local auraweld = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, aura, CF(0*SIZE,-.5*SIZE,0*SIZE), CF(0, 0, 0))
local evil = "Evil Aura"
local athp2 = Instance.new("Attachment",aura)
local atho2 = Instance.new("Attachment",aura)
if evil then
	Character[evil].Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp2
	Character[evil].Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho2
	atho2.Rotation = Vector3.new(-2.5, 0, 0)
	athp2.Position = Vector3.new(0, 2, 1.25)
end

local flameaura = CreatePart(0, Character, "SmoothPlastic", 0, 1, "Bright blue", "GunPart", VT(1.1, 1.1, 1.1),false)
local redauraweld = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, flameaura, CF(0*SIZE,-.5*SIZE,0*SIZE), CF(0, 0, 0))
local redaura = "Red Flame Aura"
local athp3 = Instance.new("Attachment",flameaura)
local atho3 = Instance.new("Attachment",flameaura)
if redaura then
	Character[redaura].Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp3
	Character[redaura].Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho3
	atho3.Rotation = Vector3.new(0, 0, 0)
	athp3.Position = Vector3.new(0, 0, 0)
end

local wingR = CreatePart(0, Character, "SmoothPlastic", 0, 1, "Bright blue", "GunPart", VT(1.1, 1.1, 1.1),false)
local WingRweld = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, wingR, CF(0*SIZE,-.5*SIZE,0*SIZE), CF(0, 0, 0))
local wingRight = "SoloWing2"
local athp5 = Instance.new("Attachment",wingR)
local atho5 = Instance.new("Attachment",wingR)
if wingRight then
	Character[wingRight].Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp5
	Character[wingRight].Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho5
	atho5.Rotation = Vector3.new(0, 0, 0)
	athp5.Position = Vector3.new(0, 0, 0)
end

local wingL = CreatePart(0, Character, "SmoothPlastic", 0, 1, "Bright blue", "GunPart", VT(1.1, 1.1, 1.1),false)
local WingLweld = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, wingL, CF(0*SIZE,-.5*SIZE,0*SIZE), CF(0, 0, 0))
local wingLeft = "SoloWing"
local athp6 = Instance.new("Attachment",wingL)
local atho6 = Instance.new("Attachment",wingL)
if wingLeft then
	Character[wingLeft].Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp6
	Character[wingLeft].Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho6
	atho6.Rotation = Vector3.new(0, 0, 0)
	athp6.Position = Vector3.new(0, 0, 0)
end

local halo = CreatePart(0, Character, "SmoothPlastic", 0, 1, "Bright blue", "GunPart", VT(1.1, 1.1, 1.1),false)
local swordhaloweld = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, halo, CF(0*SIZE,-.5*SIZE,0*SIZE), CF(0, 0, 0))
local swordhal = "swordhalo"
local athp9 = Instance.new("Attachment",halo)
local atho9 = Instance.new("Attachment",halo)
if swordhal then
	Character[swordhal].Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp9
	Character[swordhal].Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho9
	atho9.Rotation = Vector3.new(0, 0, 0)
	athp9.Position = Vector3.new(0, 0, 0)
end

local demon = CreatePart(0, Character, "SmoothPlastic", 0, 1, "Bright blue", "GunPart", VT(1.1, 1.1, 1.1),false)
local demonweld = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, demon, CF(0*SIZE,-.5*SIZE,0*SIZE), CF(0, 0, 0))
local demonaura = "MeshPartAccessory"
local athp10 = Instance.new("Attachment",demon)
local atho10 = Instance.new("Attachment",demon)
if demonaura then
	Character[demonaura].Handle:FindFirstChildOfClass("AlignPosition").Attachment1 = athp10
	Character[demonaura].Handle:FindFirstChildOfClass("AlignOrientation").Attachment1 = atho10
	atho10.Rotation = Vector3.new(0, 0, 0)
	athp10.Position = Vector3.new(0, 0, 0)
end


function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

Debris = game:GetService("Debris")

function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end
function unanchor()
	if UNANCHOR == true then
		g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end

RootPart.Size = RootPart.Size*SIZE
Torso.Size = Torso.Size*SIZE
RightArm.Size = RightArm.Size*SIZE
RightLeg.Size = RightLeg.Size*SIZE
LeftArm.Size = LeftArm.Size*SIZE
LeftLeg.Size = LeftLeg.Size*SIZE
RootJoint.C0 = ROOTC0 * CF(0 * SIZE, 0 * SIZE, 0 * SIZE) * ANGLES(RAD(0), RAD(0), RAD(0))
RootJoint.C1 = ROOTC0 * CF(0 * SIZE, 0 * SIZE, 0 * SIZE) * ANGLES(RAD(0), RAD(0), RAD(0))
Neck.C0 = NECKC0 * CF(0 * SIZE, 0 * SIZE, 0 + ((1 * SIZE) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0))
Neck.C1 = CF(0 * SIZE, -0.5 * SIZE, 0 * SIZE) * ANGLES(RAD(-90), RAD(0), RAD(180))
RightShoulder.C1 = CF(0 * SIZE, 0.5 * SIZE, -0.35 * SIZE)
LeftShoulder.C1 = CF(0 * SIZE, 0.5 * SIZE, -0.35 * SIZE)
RightHip.C0 = CF(1 * SIZE, -1 * SIZE, 0 * SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
LeftHip.C0 = CF(-1 * SIZE, -1 * SIZE, 0 * SIZE) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
RightHip.C1 = CF(0.5 * SIZE, 1 * SIZE, 0 * SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
LeftHip.C1 = CF(-0.5 * SIZE, 1 * SIZE, 0 * SIZE) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
Head.Size = Head.Size*SIZE
RootJoint.Parent = RootPart
Neck.Parent = Torso
RightShoulder.Parent = Torso
LeftShoulder.Parent = Torso
RightHip.Parent = Torso
LeftHip.Parent = Torso



Humanoid.Parent = Character


Humanoid.Died:connect(function()
	ATTACK = true
end)

function MouseDown(Mouse)
	if ATTACK == false then
		Shoot()
	end
end

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "1" and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 1
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 1 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 2
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 2 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 3
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 3 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 4
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 4 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 5
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 5 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 6
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 6 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 7
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 7 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 8
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 8 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 9
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 9 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 10
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 10 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 11
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 11 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 12
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 12 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 13
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 13 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 14
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 14 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 15
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 15 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 16
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 16 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 17
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 17 and ATTACK == false then
		change = .85
		movement = 12
		Speed = 35
		mode = 1
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "n" then
		change = .85
		movement = -12
		Speed = 35
		mode = 99
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "m" and mode == 99 then
		change = .85
		movement = -12
		Speed = 35
		mode = 1
	end
end)

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "t" and ATTACK == false then
		Dance()
	end
end)

local ISFLYING = false
local FLYING = false
local lplr = game:GetService("Players").LocalPlayer
local USERNAME = lplr.Name

Mouse.KeyDown:connect(function(NEWKEY)
	if NEWKEY == "r" and ATTACK == false then
		Gangstas()
	end
end)
local KEYHOLD = false
local HOLD = false
function MouseUp(Mouse)
	HOLD = false
end
function KeyUp(Key)
	KEYHOLD = false
end

Mouse.Button1Down:connect(function(NEWKEY)
	MouseDown(NEWKEY)
end)
Mouse.Button1Up:connect(function(NEWKEY)
	MouseUp(NEWKEY)
end)
Mouse.KeyUp:connect(function(NEWKEY)
	KeyUp(NEWKEY)
end)

local function randomstring()

	local length = MRANDOM(10,20)
	local array = {}
	for i = 1,length do
		array[i] = string.char(MRANDOM(14,126))
	end
	return table.concat(array)

end

fonts = {
	Enum.Font.Legacy,
	Enum.Font.Arial,
	Enum.Font.ArialBold,
	Enum.Font.SourceSans,
	Enum.Font.SourceSansBold,
	Enum.Font.SourceSansSemibold,
	Enum.Font.SourceSansLight,
	Enum.Font.SourceSansItalic,
	Enum.Font.Bodoni,
	Enum.Font.Garamond,
	Enum.Font.Cartoon,
	Enum.Font.Code,
	Enum.Font.Highway,
	Enum.Font.SciFi,
	Enum.Font.Arcade,
	Enum.Font.Fantasy,
	Enum.Font.Antique,
	Enum.Font.Gotham,
	Enum.Font.GothamSemibold,
	Enum.Font.GothamBold,
	Enum.Font.GothamBlack,
	Enum.Font.AmaticSC,
	Enum.Font.Bangers,
	Enum.Font.Creepster,
	Enum.Font.DenkOne,
	Enum.Font.Fondamento,
	Enum.Font.FredokaOne,
	Enum.Font.GrenzeGotisch,
	Enum.Font.IndieFlower,
	Enum.Font.JosefinSans,
	Enum.Font.Jura,
	Enum.Font.Kalam,
	Enum.Font.LuckiestGuy,
	Enum.Font.Merriweather,
	Enum.Font.Michroma,
	Enum.Font.Nunito,
	Enum.Font.Oswald,
	Enum.Font.PatrickHand,
	Enum.Font.PermanentMarker,
	Enum.Font.Roboto,
	Enum.Font.RobotoCondensed,
	Enum.Font.RobotoMono,
	Enum.Font.Sarpanch,
	Enum.Font.SpecialElite,
	Enum.Font.TitilliumWeb,
	Enum.Font.Ubuntu
}
--important things under
local a,b=Color3.new(0.33333333333,0,0),Color3.new(0,0,0)
function chatfunc(text)
	local chat = coroutine.wrap(function()
		if Character:FindFirstChild("TalkingBillBoard")~= nil then
			Character:FindFirstChild("TalkingBillBoard"):destroy()
		end
		local Bill = Instance.new("BillboardGui",Character)
		Bill.Size = UDim2.new(0,100,0,40)
		Bill.StudsOffset = Vector3.new(0,5,0)
		Bill.Adornee = Character.Head
		Bill.Name = "TalkingBillBoard"
		local Hehe = Instance.new("TextLabel",Bill)
		Hehe.BackgroundTransparency = 1
		Hehe.BorderSizePixel = 0
		Hehe.Text = ""
		Hehe.Font = Enum.Font.SourceSansBold
		Hehe.TextSize = 100
		Hehe.TextStrokeTransparency = 0
		Hehe.Size = UDim2.new(1,0,0.5,0)
		spawn(function() RainbowifyText(Hehe) end)
		for i = 1,string.len(text),1 do
			Swait()
			Hehe.Text = string.sub(text,1,i)
		end
		Swait(90)--Re[math.random(1, 93)]
		for i = 0, 1, .025 do
			Swait()
			Bill.ExtentsOffset = Vector3.new(math.random(-i, i), math.random(-i, i), math.random(-i, i))
			Hehe.TextStrokeTransparency = i
			Hehe.TextTransparency = i
		end
		Bill:Destroy()
	end)
	chat()
end

function onChatted(msg)
	chatfunc(msg)
end

Player.Chatted:connect(onChatted)
--]]
function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

local RunService = game:GetService("RunService")
function RainbowifyText(name)
	while RunService.Stepped:Wait() do
		for hue = 0, 1, 0.06 do
			name.TextColor3 = Color3.fromHSV(hue, 1, 1)
			wait(0.0005)
		end
	end
end

local Effects = nil
local Effects = Instance.new("Folder")
Effects.Parent = Character
function Effect(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new())
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or shade)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	if sOK > .1 then
		RAINBOWPART = true
	end
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	local USEBOOMERANGMATH = (Table.UseBoomerangMath or false)
	local BOOMERANG = (Table.Boomerang or 0)
	local SIZEBOOMERANG = (Table.SizeBoomerang or 0)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3,Effects,MATERIAL,0,TRANSPARENCY,shade,"Effect",Vector3.new(1,1,1),true)
		if RAINBOWPART then
			coroutine.resume(coroutine.create(function()
				while not stopeverything do
					EFFECT.Color = x
					Swait()
				end
			end))
		end
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new())
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new())
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","168892432","",SIZE,Vector3.new())
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new())
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new())
		end
		if MSH ~= nil then
			local BOOMR1 = 1+BOOMERANG/50
			local BOOMR2 = 1+SIZEBOOMERANG/50
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				if USEBOOMERANGMATH == true then
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)*BOOMR1
				else
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)
				end
			end
			local GROWTH = nil
			if USEBOOMERANGMATH == true then
				GROWTH = (SIZE - ENDSIZE)*(BOOMR2+1)
			else
				GROWTH = (SIZE - ENDSIZE)
			end
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			if USEBOOMERANGMATH == true then
				for LOOP = 1,TIME+1 do
					Swait()
					MSH.Scale = MSH.Scale - (Vector3.new((GROWTH.X)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Y)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Z)*((1 - (LOOP/TIME)*BOOMR2)))*BOOMR2)/TIME
					if TYPE == "Wave" then
						MSH.Offset = Vector3.new(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-(MOVESPEED)*((1 - (LOOP/TIME)*BOOMR1)))
						EFFECT.Orientation = ORI
					end
				end
			else
				for LOOP = 1,TIME+1 do
					Swait()
					MSH.Scale = MSH.Scale - GROWTH/TIME
					if TYPE == "Wave" then
						MSH.Offset = Vector3.new(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
						EFFECT.Orientation = ORI
					end
				end
			end
			EFFECT.Transparency = 1
			if PLAYSSOUND == false then
				EFFECT:Destroy()
			else
				repeat if stopeverything then wait(math.huge) end Swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:Destroy()
			else
				repeat if stopeverything then wait(math.huge) end Swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		end
	end))
end
local Hue = 0

coroutine.resume(coroutine.create(function()
	while not stopeverything do
		for i = 0,1,(1/60) do
			x = Color3.fromHSV(i,1,1)
			wait()
		end
	end
end))
function EFFECT1(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
	local type = type
	local rng = Instance.new("Part",Effects)
	rng.Anchored = true
	rng.Color = x
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1,1,1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
	local rngm = Instance.new("SpecialMesh",rng)
	rngm.MeshType = "Brick"
	rngm.Scale = Vector3.new(x1,y1,z1)
	local scaler2 = 1
	local speeder = FastSpeed/10
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,.1 do
			Swait()
			if type == "Add" then
				scaler2 = scaler2 - .01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - .01/value*bonuspeed
			end
			rng.Color = x
			speeder = speeder - .01*FastSpeed*bonuspeed/10
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
			rng.Transparency = rng.Transparency + .01*bonuspeed
			rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed,scaler2*bonuspeed,scaler2*bonuspeed)
		end
		rng:Destroy()
	end))
end
function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new())
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or shade)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	if sOK > .1 then
		RAINBOWPART = true
	end
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3,Effects,MATERIAL,0,TRANSPARENCY,shade,"Effect",Vector3.new(1,1,1),true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		if RAINBOWPART then
			coroutine.resume(coroutine.create(function()
				while not stopeverything and EFFECT:IsDescendantOf(game) do
					EFFECT.Color = x
					Swait()
				end
			end))
		end
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new())
		elseif TYPE == "Block" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = Vector3.new(SIZE.X,SIZE.Y,SIZE.Z)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,.1),Vector3.new())
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","1051557","",SIZE,Vector3.new())
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new())
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new())
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			EFFECT.CFrame = CFRAME
			for LOOP = 1,TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = Vector3.new(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat if stopeverything then wait(math.huge) end swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat if stopeverything then wait(math.huge) end swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end

--
local fixinggui = false
local gui = nil
local exitbutton = nil
local fpsbutton = nil
--[[
local exitbutton = Instance.new("TextButton",gui)
exitbutton.TextScaled = true
exitbutton.Font = "Code"
exitbutton.Name = "Idek"
exitbutton.BorderSizePixel = 0
exitbutton.BackgroundTransparency = .5
spawn(function() RainbowifyText(exitbutton) end)
game:GetService("RunService").Heartbeat:Connect(function(timeBetween)
	local FPS = math.floor(1/timeBetween)
	exitbutton.Text = "┃"..FPS.."┃"
	wait(1)
end)
exitbutton.TextStrokeTransparency = 0
exitbutton.BackgroundColor3 = Color3.new(.5,.5,.5)
--exitbutton.Text = "Leave Game!"
exitbutton.Size = UDim2.new(.25,0,0,36)
exitbutton.AnchorPoint = Vector2.new(0,1)
exitbutton.Position = UDim2.new(.35,0,0,-2)
gui.Parent = Player:FindFirstChildOfClass("PlayerGui")
exitbutton.MouseButton1Up:Connect(function()
	game.Players.LocalPlayer:Kick("You Have Left!")
end)
--]]
if lplr.Name == USERNAME then
gui = Instance.new("ScreenGui")
gui.Name = randomstring()
fixcharbutton = Instance.new("TextLabel",gui)
fixcharbutton.TextScaled = true
fixcharbutton.Font = "Code"
fixcharbutton.Name = randomstring()
fixcharbutton.BorderSizePixel = 0
fixcharbutton.BackgroundTransparency = .5
fixcharbutton.TextStrokeColor3 = shade
fixcharbutton.TextStrokeTransparency = 0
fixcharbutton.BackgroundColor3 = Color3.new(.5,.5,.5)
fixcharbutton.Text = "┃┃"
fixcharbutton.Size = UDim2.new(.2,0,0,36)
fixcharbutton.AnchorPoint = Vector2.new(1,1)
fixcharbutton.Position = UDim2.new(0.335,0,0,0)
exitbutton = Instance.new("TextButton",gui)
exitbutton.TextScaled = true
exitbutton.Font = "Code"
exitbutton.Name = randomstring()
exitbutton.BorderSizePixel = 0
exitbutton.BackgroundTransparency = .5
exitbutton.TextStrokeColor3 = shade
exitbutton.TextStrokeTransparency = 0
exitbutton.BackgroundColor3 = Color3.new(.5,.5,.5)
exitbutton.Text = "┃REJOIN GAME┃"
exitbutton.Size = UDim2.new(.2,0,0,36)
exitbutton.AnchorPoint = Vector2.new(0,1)
exitbutton.Position = UDim2.new(.735,0,0,0)
exitbutton.MouseButton1Up:Connect(function()
		game.Players.LocalPlayer:Kick("\nRejoining...")
		wait()
		game:GetService('TeleportService'):Teleport(game.PlaceId, game.Players.LocalPlayer)
end)
fpsbutton = Instance.new("TextLabel",gui)
fpsbutton.TextScaled = true
fpsbutton.Font = "Code"
fpsbutton.Name = randomstring()
fpsbutton.BorderSizePixel = 0
fpsbutton.BackgroundTransparency = .5
fpsbutton.TextStrokeColor3 = shade
fpsbutton.TextStrokeTransparency = 0
fpsbutton.BackgroundColor3 = Color3.new(.5,.5,.5)
fpsbutton.Text = "┃8888┃"
game:GetService("RunService").Heartbeat:Connect(function(timeBetween)
	local FPS = math.floor(1/timeBetween)
	fpsbutton.Text = "┃"..FPS.."┃"
	swait()
end)
fpsbutton.Size = UDim2.new(.2,0,0,36)
fpsbutton.AnchorPoint = Vector2.new(0,1)
fpsbutton.Position = UDim2.new(.535,0,0,0)
Songbutton = Instance.new("TextLabel",gui)
Songbutton.TextScaled = true
Songbutton.Font = "Code"
Songbutton.Name = randomstring()
Songbutton.BorderSizePixel = 0
Songbutton.BackgroundTransparency = .5
Songbutton.TextStrokeColor3 = shade
Songbutton.TextStrokeTransparency = 0
Songbutton.BackgroundColor3 = Color3.new(.5,.5,.5)
Songbutton.Text = "┃┃"
Songbutton.Size = UDim2.new(.2,0,0,36)
Songbutton.AnchorPoint = Vector2.new(0,1)
Songbutton.Position = UDim2.new(0.335,0,0,0)
gui.Parent = Player:FindFirstChildOfClass("PlayerGui")
coroutine.resume(coroutine.create(function()
	while not stopeverything do
		Songbutton.Text = "┃"..sick.SoundId.."┃"
		fixcharbutton.Text = "┃"..NAMEMODE.Text.."┃"  --epic real no fake
		Swait()
	end
end))

spawn(function() RainbowifyText(fixcharbutton) end)
spawn(function() RainbowifyText(exitbutton) end)
spawn(function() RainbowifyText(Songbutton) end)
spawn(function() RainbowifyText(fpsbutton) end)
end
-------
function WAEFFX(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or shade)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3,Effects,MATERIAL,0,TRANSPARENCY,shade,"Effect",Vector3.new(1,1,1),true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Block" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = Vector3.new(SIZE.X,SIZE.Y,SIZE.Z)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","1051557","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			EFFECT.CFrame = CFRAME
			for LOOP = 1,TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = Vector3.new(0,0,-MSH.Scale.X/8)
				end
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat if stopeverything then task.wait(HUGE) end Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat if stopeverything then task.wait(HUGE) end Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end
function Lightning(Part0,Part1,Timess,Offset,Color,Timer,sSize,eSize,Trans,Boomer,sBoomer,Trans2)
	local magz = (Part0 - Part1).Magnitude
	local Times = math.floor(math.clamp(magz/10,1,20))
	local curpos = Part0
	local trz = {
		-Offset,
		Offset
	}
	for i = 1,Times do
		local li = Instance.new("Part",Effects)
		li.Name = randomstring()
		li.TopSurface = 0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = 0
		li.Color = Color
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(0.1,0.1,magz/Times)
		local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
		local trolpos = CFrame.new(curpos,Part1) * CFrame.new(0,0,magz/Times).p + Offzet
		if Times == i then
			local magz2 = (curpos - Part1).Magnitude
			li.Size = Vector3.new(0.1,0.1,magz2)
			li.CFrame = CFrame.new(curpos,Part1) * CFrame.new(0,0,-magz2/2)
		else
			li.CFrame = CFrame.new(curpos,trolpos) * CFrame.new(0,0,magz/Times/2)
		end
		curpos = li.CFrame * CFrame.new(0,0,magz/Times/2).p
		li:Destroy()
		Effect({Time = Timer,EffectType = "Box",Size = Vector3.new(sSize,sSize,li.Size.Z),Size2 = Vector3.new(eSize,eSize,li.Size.Z),Transparency = Trans,Transparency2 = Trans2 or 1,CFrame = li.CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = li.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = Boomer,Boomerang = 0,SizeBoomerang = sBoomer})
	end
end
Holetwo = GUN
MAINRUINCOLOR = Color3.new(0,0,0)
function Shoot()
	ATTACK = true
	Rooted = false
	CreateSound(642890855,RootPart,3,1)
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = x,SoundID = 642890855,SoundPitch = .81,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = MAINRUINCOLOR,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
	for i = 0,2 do
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = x,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
		Effect({Time = math.random(25,50),EffectType = "Round Slash",Size = Vector3.new(),Size2 = Vector3.new(.1,0,.1),Transparency = 0,Transparency2 = 1,CFrame = Holetwo.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))),MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = MAINRUINCOLOR,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 15})
	end
	local mousehit = Mouse.Hit
	local DISTANCE = (Holetwo.Position - mousehit.p).Magnitude
	local killbeam = CreatePart(3,Effects,"Neon",0,0,MAINRUINCOLOR,"Kill Beam",Vector3.new(1,DISTANCE,1))
	killbeam.CFrame = CFrame.new(Holetwo.Position,mousehit.p) * CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
	MakeForm(killbeam,"Cyl")
	coroutine.resume(coroutine.create(function()
		for i = 1,25 do
			swait()
			killbeam.Color = x
			killbeam.Transparency = i/25
		end
		killbeam:Destroy()
	end))
	for i = 1,4 do
		coroutine.resume(coroutine.create(function()
			Lightning(Holetwo.Position,mousehit.p,15,3.5,x,25,0,1,0,true,55)
		end))
	end
	coroutine.resume(coroutine.create(function()
		Lightning(Holetwo.Position,mousehit.p,15,3.5,x,25,0,1,0,true,55)
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = mousehit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = x,SoundID = 821439273,SoundPitch = .8,SoundVolume = 10,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		Effect({Time = 25,EffectType = "Box",Size = Vector3.new(),Size2 = Vector3.new(3,3,3),Transparency = 0,Transparency2 = 1,CFrame = mousehit,MoveToPos = nil,RotationX = math.random(-1,1),RotationY = math.random(-1,1),RotationZ = math.random(-1,1),Material = "Neon",Color = MAINRUINCOLOR,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = true,Boomerang = 0,SizeBoomerang = 50})
		for i = 0,2 do
			for a = 0, 14 do
				EFFECT1(3,math.random(4,8),"Add",mousehit*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.03,x,0)
			end
		end
	end))
	turnto(Mouse.Hit.p)
	for i=0, 0.6, 0.05 / Animation_Speed do
		Swait()
		WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
		WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
		redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
		swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
		demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(105+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(-30+0*math.cos(SINE/25))), 1 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0.5 * COS(SINE / 50), 0*SIZE+0 * COS(SINE / 50), 2*SIZE+-0.5 * math.sin(SINE / 50)) * ANGLES(RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(30+0 * COS(SINE / 1))), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(30+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(90+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(30+0 * COS(SINE / 1))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-15+9 * COS(SINE / 74)), RAD(80+0 * COS(SINE / 74)), RAD(0+5 * COS(SINE / 37))), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-15+-9 * COS(SINE / 54)), RAD(-80+0 * COS(SINE / 54)), RAD(0+-5 * COS(SINE / 41))), 1 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end

--fly gotta be here
local BG = nil
local BV = nil
local alreadyfixing = false
iyflyspeed = 1
local FLYING = false
function sFLY()
	if not ISFLYING then
		FLYING = false
	else
		local CONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
		local lCONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
		local SPEED = 0			
		local function FLY()
			FLYING = true
			BG = Instance.new('BodyGyro',RootPart)
			BV = Instance.new('BodyVelocity',RootPart)
			BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			BG.P = 1e4
			BG.CFrame = RootPart.CFrame
			BV.Velocity = Vector3.new()
			BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			coroutine.resume(coroutine.create(function()
				repeat if stopeverything then wait(math.huge) end
					game:GetService("RunService").RenderStepped:Wait()
					if not alreadyfixing then
						if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
							SPEED = 50
						elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
							SPEED = 0
						end
						if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
							BV.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R,(CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * .2,0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
							lCONTROL = {F = CONTROL.F,B = CONTROL.B,L = CONTROL.L,R = CONTROL.R}
						elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
							BV.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R,(lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * .2,0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
						else
							BV.Velocity = Vector3.new()
						end
						BG.CFrame = workspace.CurrentCamera.CoordinateFrame
					end
				until not FLYING
				CONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
				lCONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
				SPEED = 0
				if not alreadyfixing then
					for i,v in pairs(RootPart:GetChildren()) do
						if v:IsA("BodyMover") then
							v:Destroy()
						end
					end
					RootPart.CFrame = CFrame.new(RootPart.Position)
				end
			end))
		end
		local IYMouse = Player:GetMouse()
		IYMouse.KeyDown:connect(function(KEY)
			if stopeverything then wait(math.huge) end
			if KEY:lower() == 'w' then
				CONTROL.F = Humanoid.WalkSpeed*0.02
			elseif KEY:lower() == 's' then
				CONTROL.B = - Humanoid.WalkSpeed*0.02
			elseif KEY:lower() == 'a' then
				CONTROL.L = - Humanoid.WalkSpeed*0.02
			elseif KEY:lower() == 'd' then 
				CONTROL.R = Humanoid.WalkSpeed*0.02
			elseif KEY:lower() == 'e' then
				CONTROL.Q = Humanoid.WalkSpeed*0.02
			elseif KEY:lower() == 'q' then
				CONTROL.E = -Humanoid.WalkSpeed*0.02
			end
		end)
		IYMouse.KeyUp:connect(function(KEY)
			if stopeverything then wait(math.huge) end
			if KEY:lower() == 'w' then
				CONTROL.F = 0
			elseif KEY:lower() == 's' then
				CONTROL.B = 0
			elseif KEY:lower() == 'a' then
				CONTROL.L = 0
			elseif KEY:lower() == 'd' then
				CONTROL.R = 0
			elseif KEY:lower() == 'e' then
				CONTROL.Q = 0
			elseif KEY:lower() == 'q' then
				CONTROL.E = 0
			end
		end)
		FLY()
	end
end
function Gangstas()
	ATTACK = true
	Rooted = true
	sick.TimePosition = 0
	sick.SoundId = "rbxassetid://6070263388"
	for i=0, 12, 0.1 / Animation_Speed do
		Swait()
		auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), -30*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
		gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), -30*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
		redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), -30*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
		swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), -30*SIZE-0.25 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
		demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), -30*SIZE+0.25 * COS(SINE /32), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
		WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
		WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 50), 0*SIZE+0 * COS(SINE / 50), 3*SIZE+-0.5 * math.sin(SINE / 50)) * ANGLES(RAD(-45+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-45+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-45+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-45+0 * COS(SINE / 1)), RAD(80+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-35+0 * COS(SINE / 1)), RAD(-80+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end


function Dance()
	ATTACK = true
	Rooted = true
	sick.TimePosition = 0
	sick.SoundId = "rbxassetid://35930009"
	for i=0, 13.6, 0.1 / Animation_Speed do
		Swait()
		auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), -30*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
		gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), -70*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
		redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), -30*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
		swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), -30*SIZE-0.25 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
		demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), -30*SIZE+0.25 * COS(SINE /32), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
		WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
		WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 1 * COS(SINE / 3), 0*SIZE+1 * math.sin(SINE / 3), -0.75*SIZE+-0 * COS(SINE / 3)) * ANGLES(RAD(0+0 * COS(SINE / 1)), RAD(-10+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(-90+0 * COS(SINE / 1))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(90+0 * COS(SINE / 1))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(70+0 * COS(SINE / 1))), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-0.5*SIZE+0 * COS(SINE / 1), -0.8*SIZE+0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end




BAChanges={"Bad Apple","Bad apple","bad Apple","bad apple","BaD APpLE","BAD APPLE","BAd APpLEe","BaD aPpLe","bAd ApPlE","Bad APPLE","BAD Apple","ⓑⓐⓓ ⓐⓟⓟⓛⓔ","ßãÐ ÄpPL£","6/\\D 4PP1E","əlddɐ pɐq","Pad Bapple","【﻿Ｂａｄ　Ａｐｐｌｅ】","乃卂ᗪ　卂卩卩ㄥ乇","日丹句　丹尸尸しヨ","乃ﾑり　ﾑｱｱﾚ乇","Ｂａｄ░Λｐｐｌｅ　（じ遠グ）","Bad Apple!!","🄱🄰🄳 🄰🄿🄿🄻🄴","B64 APP7E","🅱🅰🅳 🅰🅿🅿🅻🅴","BΛD ΛPPᄂΣ","вα∂ αρρℓє","ßåÐ Äþþlê","฿₳Đ ₳₱₱ⱠɆ","【B】【a】【d】 【A】【p】【p】【l】【e】","『B』『a』『d』 『A』『p』『p』『l』『e』","6vd D8pp|e","▀▄▀▄▀▄ ｂ𝐚𝔻 ᗩⓟℙᒪє ▄▀▄▀▄▀","👌︎♋︎♎︎ ✌︎◻︎◻︎●︎♏︎","°°°·.°·..·°¯°·._.·   🎀  𝐵𝒶𝒹 𝒜𝓅𝓅𝓁𝑒  🎀   ·._.·°¯°·..·°.·°°°","B̸̛̰̯̯͇͚͉͈̣̒͊̽̑̾̚͝ͅạ̸̲̭̥̩̥̗̄͗̾́́̓̓͘ͅd̵̮͌̽̀̇̇͜ ̶̮̱͊̃̌̃͂̓̂A̷̡̟̱̪͔͒͗̍̑̾p̴̛̛̭͙̫̫͉̲͕̟͈̉̓p̸̨͎̗͎̫͓̺͉̗̾͊̈́̐̅͠l̴̢̠͍̻̹̱̼̯̬̟̇̈́͋̆͌̋͠ḝ̷̼̳̘̖̗̗͆͒̆̅͛̍̀͋"}
function RandomCaps(str)
	local new = ""
	for i = 1, #str do
		if(math.random(1,2) == 1)then
			new = new .. (str:sub(i,i):upper())
		else
			new = new .. str:sub(i,i)
		end
	end
	return new
end

while true do
	Swait()
	script.Parent = WEAPONGUI
	ANIMATE.Parent = nil
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
		v:Stop();
	end
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4*SIZE, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 30)
	local forwardvec =  math.clamp((Torso.Velocity*Torso.CFrame.lookVector).X+(Torso.Velocity*Torso.CFrame.lookVector).Z,-Humanoid.WalkSpeed,Humanoid.WalkSpeed)
	local sidevec = math.clamp((Torso.Velocity*Torso.CFrame.rightVector).X+(Torso.Velocity*Torso.CFrame.rightVector).Z,-Humanoid.WalkSpeed,Humanoid.WalkSpeed)
	local sidevelocity = sidevec/Humanoid.WalkSpeed
	local forwardvelocity = forwardvec/Humanoid.WalkSpeed
	if -RootPart.Velocity.Y / 1.5 > -5 and -RootPart.Velocity.Y / 1.5 < 150 then
		velocityYFall = RootPart.Velocity.Y / 1.5
	elseif -RootPart.Velocity.Y / 1.5 < -5 then
		velocityYFall = 5
	elseif -RootPart.Velocity.Y / 1.5 > 150 then
		velocityYFall = -150
	end
	if -RootPart.Velocity.Y / 180 > 0 and -RootPart.Velocity.Y / 180 < 1.2 then
		velocityYFall2 = RootPart.Velocity.Y / 180
	elseif -RootPart.Velocity.Y / 180 < 0 then
		velocityYFall2 = 0
	elseif -RootPart.Velocity.Y / 180 > 1.2 then
		velocityYFall2 = -1.2
	end
	if -RootPart.Velocity.Y / 1.5 > -5 and -RootPart.Velocity.Y / 1.5 < 50 then
		velocityYFall3 = RootPart.Velocity.Y / 1.5
	elseif -RootPart.Velocity.Y / 1.5 < -5 then
		velocityYFall3 = 5
	elseif -RootPart.Velocity.Y / 1.5 > 50 then
		velocityYFall3 = -50
	end
	if -RootPart.Velocity.Y / 1.5 > -50 and -RootPart.Velocity.Y / 1.5 < 20 then
		velocityYFall4 = RootPart.Velocity.Y / 1.5
	elseif -5 > -RootPart.Velocity.Y / 180 then
		velocityYFall4 = 5
	elseif -RootPart.Velocity.Y / 180 > 50 then
		velocityYFall4 = -50
	end
	if RootPart.RotVelocity.Y / 6 < 1 and RootPart.RotVelocity.Y / 6 > -1 then
		neckrotY = RootPart.RotVelocity.Y / 6
	elseif RootPart.RotVelocity.Y / 6 < -1 then
		neckrotY = -1
	elseif RootPart.RotVelocity.Y / 6 > 1 then
		neckrotY = 1
	end
	if RootPart.RotVelocity.Y / 8 < 0.6 and RootPart.RotVelocity.Y / 8 > -0.6 then
		neckrotY2 = RootPart.RotVelocity.Y / 8
	elseif RootPart.RotVelocity.Y / 8 < -0.6 then
		neckrotY2 = -0.6
	elseif RootPart.RotVelocity.Y / 8 > 0.6 then
		neckrotY2 = 0.6
	end
	if RootPart.RotVelocity.Y / 6 < 0.2 and RootPart.RotVelocity.Y / 6 > -0.2 then
		torsorotY = RootPart.RotVelocity.Y / 6
	elseif RootPart.RotVelocity.Y / 6 < -0.2 then
		torsorotY = -0.2
	elseif RootPart.RotVelocity.Y / 6 > 0.2 then
		torsorotY = 0.2
	end
	if RootPart.RotVelocity.Y / 8 < 0.2 and RootPart.RotVelocity.Y / 8 > -0.2 then
		torsorotY2 = RootPart.RotVelocity.Y / 8
	elseif RootPart.RotVelocity.Y / 8 < -0.2 then
		torsorotY2 = -0.2
	elseif RootPart.RotVelocity.Y / 8 > 0.2 then
		torsorotY2 = 0.2
	end
	torsoY = -(Torso.Velocity * Vector3.new(1, 0, 1)).magnitude / 20
	torsoY2 = -(Torso.Velocity * Vector3.new(1, 0, 1)).magnitude / 36
	local rightvector = (RootPart.Velocity * RootPart.CFrame.rightVector).X + (RootPart.Velocity * RootPart.CFrame.rightVector).Z
	local lookvector = (RootPart.Velocity * RootPart.CFrame.lookVector).X + (RootPart.Velocity * RootPart.CFrame.lookVector).Z
	if lookvector > Humanoid.WalkSpeed then
		lookvector = Humanoid.WalkSpeed
	end
	if lookvector < -Humanoid.WalkSpeed then
		lookvector = -Humanoid.WalkSpeed
	end
	if rightvector > Humanoid.WalkSpeed then
		rightvector = Humanoid.WalkSpeed
	end
	if rightvector < -Humanoid.WalkSpeed then
		rightvector = -Humanoid.WalkSpeed
	end
	local lookvel = lookvector / Humanoid.WalkSpeed
	local rightvel = rightvector / Humanoid.WalkSpeed
	local leftlegheight,rightlegheight = 0,0
	local Rray,Lray = Ray.new(RightLeg.Position,RightLeg.CFrame.UpVector.Unit*-2),Ray.new(LeftLeg.Position,LeftLeg.CFrame.UpVector.Unit*-2)
	local rp,Rpos = workspace:FindPartOnRayWithIgnoreList(Rray,{Character},false,true)
	local lp,Lpos = workspace:FindPartOnRayWithIgnoreList(Lray,{Character},false,true)
	leftlegheight,rightlegheight = 0,0
	if rp then   rightlegheight = (RightLeg.Position-Rpos).Magnitude-.95   end
	if lp then   leftlegheight = (LeftLeg.Position-Lpos).Magnitude-.95   end
	if HITFLOOR == nil then
		ANIM = "Midair"
		if ATTACK == false then
			if mode == 3 then

				sick.SoundId = "rbxassetid://6498555267"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Ultraskidded Cannon")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]


				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+ ((1) - 1) * COS(SINE / 1)) * ANGLES(math.rad(110+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)					
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)


			elseif mode == 4 then

				sick.SoundId = "rbxassetid://5485798026"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Ultraskidded Cannon")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]


				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+ ((1) - 1) * COS(SINE / 1)) * ANGLES(math.rad(110+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)					
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				

			elseif mode == 2 then

				sick.SoundId = "rbxassetid://2649590402"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("HSC - XSE")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]


				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(110+5*math.cos(SINE/40)),math.rad(180+1*math.cos(SINE/12)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)					
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

			elseif mode == 7 then

				sick.SoundId = "rbxassetid://611191130"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("iNSaNiTYFullVersion")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]


				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(113+-2*math.cos(SINE/37)),math.rad(180+5*math.cos(SINE/4)),math.cos(SINE / 0.25),math.rad(22+-2*math.cos(SINE/56))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

			
			elseif mode == 9 then

				sick.SoundId = "rbxassetid://6454152476"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("HSC - XSE")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]


				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(113+-2*math.cos(SINE/37)),math.rad(180+5*math.cos(SINE/4)),math.cos(SINE / 0.25),math.rad(22+-2*math.cos(SINE/56))), 1 / Animation_Speed)

				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)					
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

			
			elseif mode == 11 then

				sick.SoundId = "rbxassetid://4770746196"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Antiv7")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]


				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(110+0*math.cos(SINE/30)),math.rad(180+10*math.cos(SINE/100)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)
				if math.random(1,30) == 1 then
					Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(110+math.random(-20,20)*math.cos(SINE/30)),math.rad(180+10*math.cos(SINE/100))+math.random(-20,20),math.rad(0+math.random(-20,20)*math.cos(SINE/25))), 1 / Animation_Speed)
				end
				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

			elseif mode == 1 then

				sick.SoundId = "rbxassetid://2677233603"
				sick.Pitch = 1
				NAMEMODE.Text = BAChanges[MRANDOM(1,#BAChanges)]
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]


				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(105+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)


				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0+-0 * COS(SINE / 15))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)


			elseif mode == 14 then

				sick.SoundId = "rbxassetid://143666548"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Vibing")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]


				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+-0.05 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(110+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

			elseif mode == 12 then

				sick.SoundId = "rbxassetid://1632083717"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Redemption")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]


				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), 0*SIZE+((1) - 1) * COS(SINE / 1)) * ANGLES(math.rad(90+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)


			elseif mode == 16 then

				sick.SoundId = "rbxassetid://6768783121"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("mlc")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]


				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), 0*SIZE+((1) - 1) * COS(SINE / 1)) * ANGLES(math.rad(125+-2*math.cos(SINE/20)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)


			elseif mode == 99 then

				sick.SoundId = "rbxassetid://171230598"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Vaporwave")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]


				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(110+math.random(-24,24)*math.cos(SINE/30)),math.rad(180+math.random(-24,24)*math.cos(SINE/28)),math.rad(0+math.random(-24,24)*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

			elseif mode == 5 then


				sick.SoundId = "rbxassetid://6207243296"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("iNSaNiTY")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]


				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(110+0*math.cos(SINE/30)),math.rad(180+10*math.cos(SINE/100)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)
				if math.random(1,60) == 1 then
					Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(110+math.random(-20,20)*math.cos(SINE/30)),math.rad(180+10*math.cos(SINE/100))+math.random(-20,20),math.rad(0+math.random(-20,20)*math.cos(SINE/25))), 1 / Animation_Speed)
				end

				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)					
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)


			elseif mode == 6 then

				sick.SoundId = "rbxassetid://7092435374"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Hyperskidded Cannon XSE")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]


				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(105+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)


			elseif mode == 8 then

				sick.SoundId = "rbxassetid://6291841343"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("LCV1")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]


				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(75+-3*math.cos(SINE/12)),math.rad(185+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)


			elseif mode == 10 then

				sick.SoundId = "rbxassetid://6190635423"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Spookeez")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(90+0*math.cos(SINE/30)),math.rad(180+-15*math.cos(SINE/30)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)


			elseif mode == 13 then
				sick.SoundId = "rbxassetid://937247562"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Dep")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), 0*SIZE+((1) - 1) * COS(SINE / 1)) * ANGLES(math.rad(110+-2.5*math.cos(SINE/312)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+30*math.cos(SINE/12))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

			elseif mode == 15 then

				sick.SoundId = "rbxassetid://1382488262"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Pandora")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+((1.1*SIZE)-1)) * ANGLES(math.rad(115+-4*math.cos(SINE/12)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)


			elseif mode == 17 then

				sick.SoundId = "rbxassetid://6275837083"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("Glitch")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(100+-10*math.sin(SINE/9)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

			end end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		WACKYEFFECT({Time = 1, EffectType = "Sphere", Size = Vector3.new(1+sick.PlaybackLoudness/50,0.1,1+sick.PlaybackLoudness/50), Size2 = Vector3.new(1+sick.PlaybackLoudness/1,0.1,1+sick.PlaybackLoudness/50), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 1, EffectType = "Sphere", Size = Vector3.new(0.4+sick.PlaybackLoudness/50,0.4,0.4+sick.PlaybackLoudness/50), Size2 = Vector3.new(0.4+sick.PlaybackLoudness/1,0.2,0.4+sick.PlaybackLoudness/50), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = x, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		--WAEFFX({Time = 12.5, EffectType = "Sphere", Size = VT(20*sick.PlaybackLoudness/75,0,2*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 50, RotationZ = 0, Material = "Neon", Color = a, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		--WAEFFX({Time = 12.5, EffectType = "Sphere", Size = VT(2*sick.PlaybackLoudness/75,0,20*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 50, RotationZ = 0, Material = "Neon", Color = b, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		--WAEFFX({Time = 12.5, EffectType = "Sphere", Size = VT(8*sick.PlaybackLoudness/75,0,8*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 50, RotationZ = 0, Material = "Neon", Color = b, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		if ATTACK == false then
			if mode == 3 then

				sick.SoundId = "rbxassetid://6498555267"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("Ultraskidded Cannon")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]




				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+ ((1) - 1) * COS(SINE / 1)) * ANGLES(math.rad(110+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)					
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0.5 * COS(SINE / 50), 0*SIZE+0 * COS(SINE / 50), 3*SIZE+0.5 * math.sin(SINE / 50)) * ANGLES(RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(25+8.5 * COS(SINE / 50)), RAD(0+0 * COS(SINE / 50)), RAD(-25+-5 * COS(SINE / 25))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(135+8.5 * COS(SINE / 50)), RAD(0+0 * COS(SINE / 50)), RAD(25+0 * COS(SINE / 50))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-15+9 * COS(SINE / 74)), RAD(80+0 * COS(SINE / 54)), RAD(0+5 * COS(SINE / 37))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-15+-9 * COS(SINE / 54)), RAD(-80+0 * COS(SINE / 54)), RAD(0+-5 * COS(SINE / 41))), 1 / Animation_Speed)

			elseif mode == 9 then

				sick.SoundId = "rbxassetid://6454152476"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("HSC - XSE")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]




				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(113+-2*math.cos(SINE/37)),math.rad(180+5*math.cos(SINE/4)),math.cos(SINE / 0.25),math.rad(22+-2*math.cos(SINE/56))), 1 / Animation_Speed)

				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)					
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 41), 0*SIZE+0 * COS(SINE / 41), 0*SIZE+0.5 * COS(SINE / 41)) * ANGLES(RAD(0+1 * COS(SINE / 41)), RAD(0+1 * COS(SINE / 27)), RAD(0+1 * COS(SINE / 32))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-0.6*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), -0.3*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(60+1 * COS(SINE / 22)), RAD(0+1 * COS(SINE / 25)), RAD(70+1 * COS(SINE / 30))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.25*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), -0.1*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(45+0 * COS(SINE / 1)), RAD(-45+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(90+1 * COS(SINE / 23)), RAD(-20+1 * COS(SINE / 34)), RAD(-70+0 * COS(SINE / 31))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(90+0 * COS(SINE / 26)), RAD(-90+1 * COS(SINE / 20)), RAD(0+1 * COS(SINE / 30))), 1 / Animation_Speed)

			elseif mode == 4 then

				sick.SoundId = "rbxassetid://5485798026"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("Ultraskidded Cannon")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]




				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+ ((1) - 1) * COS(SINE / 1)) * ANGLES(math.rad(110+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)					
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0.5 * COS(SINE / 50), 0*SIZE+0 * COS(SINE / 50), 3*SIZE+0.5 * math.sin(SINE / 50)) * ANGLES(RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(25+8.5 * COS(SINE / 50)), RAD(0+0 * COS(SINE / 50)), RAD(-25+-5 * COS(SINE / 25))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(135+8.5 * COS(SINE / 50)), RAD(0+0 * COS(SINE / 50)), RAD(25+0 * COS(SINE / 50))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-15+9 * COS(SINE / 74)), RAD(80+0 * COS(SINE / 54)), RAD(0+5 * COS(SINE / 37))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-15+-9 * COS(SINE / 54)), RAD(-80+0 * COS(SINE / 54)), RAD(0+-5 * COS(SINE / 41))), 1 / Animation_Speed)

			elseif mode == 5 then

				sick.SoundId = "rbxassetid://6207243296"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("iNSaNiTY")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]




				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(110+0*math.cos(SINE/30)),math.rad(180+10*math.cos(SINE/100)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)
				if math.random(1,60) == 1 then
					Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(110+math.random(-20,20)*math.cos(SINE/30)),math.rad(180+10*math.cos(SINE/100))+math.random(-20,20),math.rad(0+math.random(-20,20)*math.cos(SINE/25))), 1 / Animation_Speed)
				end

				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)					
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 50), 0*SIZE+0 * COS(SINE / 50), 3*SIZE+-0.5 * math.sin(SINE / 50)) * ANGLES(RAD(20+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(20+0 * COS(SINE / 50)), RAD(0+0 * COS(SINE / 50)), RAD(-10+-10 * math.sin(SINE / 50))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-41.6+-4 * math.sin(SINE / 50)), RAD(0+0 * COS(SINE / 50)), RAD(0+0 * COS(SINE / 50))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(10+0 * COS(SINE / 50)), RAD(80+0 * COS(SINE / 50)), RAD(10+10 * math.sin(SINE / 50))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(20+0 * COS(SINE / 50)), RAD(-80+0 * COS(SINE / 50)), RAD(-10+-10 * math.sin(SINE / 50))), 1 / Animation_Speed)

			elseif mode == 2 then

				sick.SoundId = "rbxassetid://2649590402"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("HSC - XSE")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]




				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(110+5*math.cos(SINE/40)),math.rad(180+1*math.cos(SINE/12)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)					
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 41), 0*SIZE+0 * COS(SINE / 41), 0*SIZE+0.5 * COS(SINE / 41)) * ANGLES(RAD(0+1 * COS(SINE / 41)), RAD(0+1 * COS(SINE / 27)), RAD(0+1 * COS(SINE / 32))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-0.6*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), -0.3*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(60+1 * COS(SINE / 22)), RAD(0+1 * COS(SINE / 25)), RAD(70+1 * COS(SINE / 30))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.25*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), -0.1*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(45+0 * COS(SINE / 1)), RAD(-45+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(90+1 * COS(SINE / 23)), RAD(-20+1 * COS(SINE / 34)), RAD(-70+0 * COS(SINE / 31))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(90+0 * COS(SINE / 26)), RAD(-90+1 * COS(SINE / 20)), RAD(0+1 * COS(SINE / 30))), 1 / Animation_Speed)

			elseif mode == 7 then	

				sick.SoundId = "rbxassetid://611191130"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("iNSaNiTYFullVersion")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]




				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(113+-2*math.cos(SINE/37)),math.rad(180+5*math.cos(SINE/4)),math.cos(SINE / 0.25),math.rad(22+-2*math.cos(SINE/56))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 20), 0*SIZE+0.03 * COS(SINE / 20), -1.2*SIZE+0.1 * COS(SINE / 20)) * ANGLES(RAD(45+-2 * COS(SINE / 32)), RAD(0+0 * COS(SINE / 32)), RAD(-30+2 * COS(SINE / 56))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 45), 1*SIZE+0.025 * COS(SINE / 45), -0.2*SIZE+0 * COS(SINE / 45)) * ANGLES(RAD(148+-2 * COS(SINE / 51)), RAD(0+-4 * COS(SINE / 64)), RAD(22+-2 * COS(SINE / 45))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.5*SIZE-0 * COS(SINE / 45), 0.5*SIZE+0.025 * COS(SINE / 45), -0.3*SIZE+0 * COS(SINE / 45)) * ANGLES(RAD(5+3 * COS(SINE / 43)), RAD(-14+-5 * COS(SINE / 52)), RAD(63+9 * COS(SINE / 45))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 20), 0.2*SIZE+-0.1 * COS(SINE / 20), -0.3*SIZE+0 * COS(SINE / 20)) * ANGLES(RAD(15+-2 * COS(SINE / 56)), RAD(90+3 * COS(SINE / 32)), RAD(50+-2 * COS(SINE / 32))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 20), -1*SIZE+-0.1 * COS(SINE / 20), 0*SIZE+0 * COS(SINE / 20)) * ANGLES(RAD(-1+-2 * COS(SINE / 56)), RAD(-90+3 * COS(SINE / 32)), RAD(20+2 * COS(SINE / 32))), 1 / Animation_Speed)


			elseif mode == 11 then	

				sick.SoundId = "rbxassetid://4770746196"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("Antiv7")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]




				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(110+0*math.cos(SINE/30)),math.rad(180+10*math.cos(SINE/100)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)
				if math.random(1,30) == 1 then
					Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(110+math.random(-20,20)*math.cos(SINE/30)),math.rad(180+10*math.cos(SINE/100))+math.random(-20,20),math.rad(0+math.random(-20,20)*math.cos(SINE/25))), 1 / Animation_Speed)
				end
				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 50), 0*SIZE+0 * COS(SINE / 50), 1*SIZE+0.5 * COS(SINE / 50)) * ANGLES(RAD(20+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(20+0 * COS(SINE / 50)), RAD(0+0 * COS(SINE / 50)), RAD(-10+-10 * COS(SINE / 50))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(80+4 * COS(SINE / 25)), RAD(0+0 * COS(SINE / 25)), RAD(45+0 * COS(SINE / 25))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(10+0 * COS(SINE / 50)), RAD(80+0 * COS(SINE / 50)), RAD(10+10 * COS(SINE / 50))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(20+0 * COS(SINE / 50)), RAD(-80+0 * COS(SINE / 50)), RAD(-10+-10 * COS(SINE / 50))), 1 / Animation_Speed)

			elseif mode == 1 then

				sick.SoundId = "rbxassetid://2677233603"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = BAChanges[MRANDOM(1,#BAChanges)]
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]




				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(105+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)


				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0+-0 * COS(SINE / 15))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 28), 0*SIZE+0 * COS(SINE / 28), 1.5*SIZE+0.3 * COS(SINE / 20)) * ANGLES(RAD(0+-5 * COS(SINE / 30)), RAD(0+0 * COS(SINE / 34)), RAD(0+0 * COS(SINE / 34))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(10+0 * COS(SINE / 28)), RAD(0+0 * COS(SINE / 28)), RAD(-20+-2.5 * COS(SINE / 28))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(10+0 * COS(SINE / 28)), RAD(0+0 * COS(SINE / 28)), RAD(20+2.5 * COS(SINE / 28))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -0.25*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+0 * COS(SINE / 20)), RAD(90+0 * COS(SINE / 20)), RAD(-10+-2.5 * COS(SINE / 20))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+0 * COS(SINE / 20)), RAD(-90+0 * COS(SINE / 20)), RAD(10+-2.5 * COS(SINE / 20))), 1 / Animation_Speed)

			elseif mode == 14 then

				sick.SoundId = "rbxassetid://143666548"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("Vibing")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]





				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+-0.05 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(110+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 9), 0*SIZE+0 * COS(SINE / 9), 0*SIZE+-0.5 * math.sin(SINE / 9)) * ANGLES(RAD(-20+2 * COS(SINE / 9)), RAD(0+0 * COS(SINE / 9)), RAD(0+0 * COS(SINE / 9))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-0.9*SIZE-0 * COS(SINE / 1), 0.75*SIZE+0 * COS(SINE / 1), 0.1*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-165+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(40+0 * COS(SINE / 1))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1*SIZE-0 * COS(SINE / 1), 0.75*SIZE+0 * COS(SINE / 1), 0.07*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-165+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(-40+0 * COS(SINE / 1))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-12.5+0 * COS(SINE / 1)), RAD(90+0 * COS(SINE / 1)), RAD(10+0 * COS(SINE / 1))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(12.5+0 * COS(SINE / 1)), RAD(-90+0 * COS(SINE / 1)), RAD(10+0 * COS(SINE / 1))), 1 / Animation_Speed)

			elseif mode == 12 then

				sick.SoundId = "rbxassetid://1632083717"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("Redemption")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]





				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), 0*SIZE+((1) - 1) * COS(SINE / 1)) * ANGLES(math.rad(90+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 18), 0*SIZE+0 * COS(SINE / 18), 2*SIZE+1 * COS(SINE / 18)) * ANGLES(RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 12), 0.5*SIZE+0.05 * COS(SINE / 12), 0*SIZE+0 * COS(SINE / 12)) * ANGLES(RAD(0+0 * COS(SINE / 12)), RAD(0+0 * COS(SINE / 12)), RAD(-15+3 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 12), 0.5*SIZE+0.05 * COS(SINE / 12), 0*SIZE+0 * COS(SINE / 12)) * ANGLES(RAD(160+4 * COS(SINE /62)), RAD(0+0 * COS(SINE / 12)), RAD(15+-3 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-17+9.4 * COS(SINE / 26)), RAD(80+0 * COS(SINE / 26)), RAD(0+0 * COS(SINE / 26))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-22+10.8 * COS(SINE / 32)), RAD(-80+0 * COS(SINE / 32)), RAD(0+0 * COS(SINE / 32))), 1 / Animation_Speed)

			elseif mode == 16 then

				sick.SoundId = "rbxassetid://6768783121"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("mlc")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]




				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), 0*SIZE+((1) - 1) * COS(SINE / 1)) * ANGLES(math.rad(125+-2*math.cos(SINE/20)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 20), 0*SIZE+0 * COS(SINE / 20), 0*SIZE+0.5 * math.sin(SINE / 20)) * ANGLES(RAD(-30.9+-5 * COS(SINE / 20)), RAD(0+0 * COS(SINE / 20)), RAD(0+0 * COS(SINE / 20))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-20+8.5 * COS(SINE / 20)), RAD(0+0 * COS(SINE / 20)), RAD(-25+-5 * COS(SINE / 20))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(130+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(15+0 * COS(SINE / 1))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+38 * COS(SINE / 20)), RAD(80+0 * COS(SINE / 20)), RAD(15+-25 * COS(SINE / 20))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-30.9+38 * COS(SINE / 20)), RAD(-80+0 * COS(SINE / 20)), RAD(-15+25 * COS(SINE / 20))), 1 / Animation_Speed)


			elseif mode == 99 then

				sick.SoundId = "rbxassetid://171230598"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("Vaporwave")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]




				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(110+math.random(-24,24)*math.cos(SINE/30)),math.rad(180+math.random(-24,24)*math.cos(SINE/28)),math.rad(0+math.random(-24,24)*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 18), 0*SIZE+0 * COS(SINE / 18), 2*SIZE+1 * COS(SINE / 18)) * ANGLES(RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(180+math.random(-24,24) * COS(SINE / 1)), RAD(0+math.random(-24,24) * COS(SINE / 1)), RAD(25+math.random(-24,24) * COS(SINE / 1))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(180+math.random(-24,24) * COS(SINE / 1)), RAD(0+math.random(-24,24) * COS(SINE / 1)), RAD(-25+math.random(-24,24) * COS(SINE / 1))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-20+1 * COS(SINE / 18)), RAD(0+0 * COS(SINE / 18)), RAD(-80+0 * COS(SINE / 18))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.7*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-35+1 * COS(SINE / 18)), RAD(0+0 * COS(SINE / 18)), RAD(80+0 * COS(SINE / 18))), 1 / Animation_Speed)

			elseif mode == 6 then
				sick.SoundId = "rbxassetid://7092435374"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("Hyperskidded Cannon XSE")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]




				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(105+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 28), 0*SIZE+0 * COS(SINE / 28), 1.5*SIZE+0.1 * COS(SINE / 28)) * ANGLES(RAD(0+-1 * COS(SINE / 34)), RAD(0+0 * COS(SINE / 34)), RAD(0+0 * COS(SINE / 34))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.1*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-35+0 * COS(SINE / 12)), RAD(25+-2.5 * SIN(SINE / 12)), RAD(55+-2.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), -0.03*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(180+0 * COS(SINE / 1)), RAD(-15+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -0.25*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-2.5+0 * COS(SINE / 1)), RAD(90+0 * COS(SINE / 1)), RAD(-10+0 * COS(SINE / 1))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-2.5+0 * COS(SINE / 1)), RAD(-90+0 * COS(SINE / 1)), RAD(10+0 * COS(SINE / 1))), 1 / Animation_Speed)

			elseif mode == 8 then
				sick.SoundId = "rbxassetid://6291841343"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("LCV1")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]




				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(75+-3*math.cos(SINE/12)),math.rad(185+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 12), 0*SIZE+0 * COS(SINE / 12), 0*SIZE+0.05 * COS(SINE / 12)) * ANGLES(RAD(15+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 12), 0.5*SIZE+0.1 * COS(SINE / 12), 0*SIZE+0 * COS(SINE / 12)) * ANGLES(RAD(15+-1.5 * COS(SINE / 12)), RAD(0+6 * COS(SINE / 12)), RAD(0+6 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 12), 0.5*SIZE+0.1 * COS(SINE / 12), 0*SIZE+0 * COS(SINE / 12)) * ANGLES(RAD(-53.75+1.75 * COS(SINE / 12)), RAD(0+0 * COS(SINE / 12)), RAD(5+0 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 12), -1.1*SIZE+-0.05 * COS(SINE / 12), 0*SIZE+0 * COS(SINE / 12)) * ANGLES(RAD(15+0 * COS(SINE / 12)), RAD(80+0 * COS(SINE / 12)), RAD(-4+0 * COS(SINE / 12))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 12), -1.1*SIZE+-0.05 * COS(SINE / 12), 0*SIZE+0 * COS(SINE / 12)) * ANGLES(RAD(10+0 * COS(SINE / 1)), RAD(-70+0 * COS(SINE / 1)), RAD(-5+0 * COS(SINE / 1))), 1 / Animation_Speed)

			elseif mode == 10 then
				sick.SoundId = "rbxassetid://6190635423"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("Spookeez")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]




				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(90+0*math.cos(SINE/30)),math.rad(180+-15*math.cos(SINE/30)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 15), 0*SIZE+0 * COS(SINE / 15), 3*SIZE+0.5 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 30)), RAD(0+-10 * COS(SINE / 30)), RAD(0+0 * COS(SINE / 30))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(5+0 * COS(SINE / 30)), RAD(5+0 * COS(SINE / 30)), RAD(-10+15 * COS(SINE / 30))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(135+-15 * COS(SINE / 30)), RAD(0+0 * COS(SINE / 30)), RAD(25+15 * COS(SINE / 30))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-10+0 * COS(SINE / 15)), RAD(80+0 * COS(SINE / 15)), RAD(10+10 * COS(SINE / 15))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+0 * COS(SINE / 15)), RAD(-80+0 * COS(SINE / 15)), RAD(-10+-10 * COS(SINE / 15))), 1 / Animation_Speed)

			elseif mode == 13 then
				sick.SoundId = "rbxassetid://937247562"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("Dep")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]




				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), 0*SIZE+((1) - 1) * COS(SINE / 1)) * ANGLES(math.rad(110+-2.5*math.cos(SINE/312)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+30*math.cos(SINE/12))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 12), 0*SIZE+0 * COS(SINE / 12), 0*SIZE+0.05 * COS(SINE / 12)) * ANGLES(RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(20+0 * COS(SINE / 50)), RAD(0+0 * COS(SINE / 50)), RAD(-10+-10 * math.sin(SINE / 50))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-41.6+-4 * math.sin(SINE / 50)), RAD(0+0 * COS(SINE / 50)), RAD(0+0 * COS(SINE / 50))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 12), -1*SIZE+-0.05 * COS(SINE / 12), -0.01*SIZE+0 * COS(SINE / 12)) * ANGLES(RAD(-8+0 * COS(SINE / 1)), RAD(90+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 12), -1*SIZE+-0.05 * COS(SINE / 12), -0.01*SIZE+0 * COS(SINE / 12)) * ANGLES(RAD(-8+0 * COS(SINE / 1)), RAD(-90+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)

			elseif mode == 15 then

				sick.SoundId = "rbxassetid://1382488262"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("Pandora")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]




				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+((1.1*SIZE)-1)) * ANGLES(math.rad(115+-4*math.cos(SINE/12)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- -0.04 * SIN(SINE / 12), 0*SIZE+0.04 * SIN(SINE / 12), 0*SIZE+0.05 * COS(SINE / 12)) * ANGLES(RAD(0+-2.5 * SIN(SINE / 12)), RAD(0+-2.5 * SIN(SINE / 12)), RAD(0+0 * COS(SINE / 12))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(20+0 * COS(SINE / 50)), RAD(0+0 * COS(SINE / 50)), RAD(-10+-10 * math.sin(SINE / 50))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.1*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-35+0 * COS(SINE / 12)), RAD(-25+2.5 * SIN(SINE / 12)), RAD(-55+2.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 24), -1*SIZE+0.06 * SIN(SINE / 24), -0.05*SIZE+-0.01 * COS(SINE / 12)) * ANGLES(RAD(0+-2.5 * SIN(SINE / 12)), RAD(75+0 * COS(SINE / 24)), RAD(-2+-2.5 * SIN(SINE / 24))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 24), -1*SIZE+-0.06 * SIN(SINE / 24), -0.05*SIZE+-0.01 * COS(SINE / 12)) * ANGLES(RAD(0+-2.5 * SIN(SINE / 12)), RAD(-75+0 * COS(SINE / 12)), RAD(-2+2.5 * SIN(SINE / 24))), 1 / Animation_Speed)

			elseif mode == 17 then

				sick.SoundId = "rbxassetid://6275837083"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("Glitch")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(100+-10*math.sin(SINE/9)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 9), 0*SIZE+0 * COS(SINE / 9), 3*SIZE+0.5 * COS(SINE / 9)) * ANGLES(RAD(0+-2.5 * math.sin(SINE / 9)), RAD(0+0 * COS(SINE / 9)), RAD(0+0 * COS(SINE / 9))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 9), 0.5*SIZE+0.25 * math.sin(SINE / 9), 0*SIZE+0 * COS(SINE / 9)) * ANGLES(RAD(0+0 * COS(SINE / 9)), RAD(0+0 * COS(SINE / 9)), RAD(-10+10 * COS(SINE / 9))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 9), 0.5*SIZE+0.25 * math.sin(SINE / 9), 0*SIZE+0 * COS(SINE / 9)) * ANGLES(RAD(135+5 * math.sin(SINE / 9)), RAD(0+0 * COS(SINE / 9)), RAD(25+0 * COS(SINE / 9))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-10+0 * COS(SINE / 9)), RAD(80+0 * COS(SINE / 9)), RAD(5+5 * math.sin(SINE / 9))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+0 * COS(SINE / 9)), RAD(-80+0 * COS(SINE / 9)), RAD(-5+-5 * math.sin(SINE / 9))), 1 / Animation_Speed)

			end end

	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		--WAEFFX({Time = 12.5, EffectType = "Sphere", Size = VT(20*sick.PlaybackLoudness/75,0,2*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 50, RotationZ = 0, Material = "Neon", Color = a, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		--WAEFFX({Time = 12.5, EffectType = "Sphere", Size = VT(2*sick.PlaybackLoudness/75,0,20*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 50, RotationZ = 0, Material = "Neon", Color = b, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = 1, EffectType = "Sphere", Size = Vector3.new(1+sick.PlaybackLoudness/50,0.1,1+sick.PlaybackLoudness/50), Size2 = Vector3.new(1+sick.PlaybackLoudness/1,0.1,1+sick.PlaybackLoudness/50), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 1, EffectType = "Sphere", Size = Vector3.new(0.4+sick.PlaybackLoudness/50,0.4,0.4+sick.PlaybackLoudness/50), Size2 = Vector3.new(0.4+sick.PlaybackLoudness/1,0.2,0.4+sick.PlaybackLoudness/50), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = x, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		--WAEFFX({Time = 12.5, EffectType = "Sphere", Size = VT(8*sick.PlaybackLoudness/75,0,8*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 50, RotationZ = 0, Material = "Neon", Color = b, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		if ATTACK == false then
			if mode == 3 then

				sick.SoundId = "rbxassetid://6498555267"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Ultraskidded Cannon")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 0.75*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(50+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0.5 * COS(SINE / 50), 0*SIZE+0 * COS(SINE / 50), 3*SIZE+0.5 * math.sin(SINE / 50)) * ANGLES(RAD(40+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-45+0 * COS(SINE / 19)), RAD(0+0 * COS(SINE / 19)), RAD(-5+-2 * COS(SINE / 19))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-45+0 * COS(SINE / 19)), RAD(0+0 * COS(SINE / 19)), RAD(5+2 * COS(SINE / 19))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-20+9 * COS(SINE / 74)), RAD(80+0 * COS(SINE / 70)), RAD(0+5 * COS(SINE / 37))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-20+-9 * COS(SINE / 54)), RAD(-80+0 * COS(SINE / 54)), RAD(0+-5 * COS(SINE / 41))), 1 / Animation_Speed)

			elseif mode == 4 then

				sick.SoundId = "rbxassetid://5485798026"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Ultraskidded Cannon")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 0.75*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(50+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0.5 * COS(SINE / 50), 0*SIZE+0 * COS(SINE / 50), 3*SIZE+0.5 * math.sin(SINE / 50)) * ANGLES(RAD(40+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-45+0 * COS(SINE / 19)), RAD(0+0 * COS(SINE / 19)), RAD(-5+-2 * COS(SINE / 19))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-45+0 * COS(SINE / 19)), RAD(0+0 * COS(SINE / 19)), RAD(5+2 * COS(SINE / 19))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-20+9 * COS(SINE / 74)), RAD(80+0 * COS(SINE / 70)), RAD(0+5 * COS(SINE / 37))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-20+-9 * COS(SINE / 54)), RAD(-80+0 * COS(SINE / 54)), RAD(0+-5 * COS(SINE / 41))), 1 / Animation_Speed)


			elseif mode == 2 then

				sick.SoundId = "rbxassetid://2649590402"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("HSC - XSE")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), 0*SIZE+((1) - 1) * COS(SINE / 1)) * ANGLES(math.rad(63+-5*math.cos(SINE/52)),math.rad(180+-3*math.cos(SINE/37)),math.rad(0+2*math.cos(SINE/78))), 1 / Animation_Speed)

				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0.15 * COS(SINE / 47), -0.5*SIZE+0 * COS(SINE / 47), 0.5*SIZE+0.1 * COS(SINE / 28)) * ANGLES(RAD(70+0 * COS(SINE / 47)), RAD(0+-3 * COS(SINE / 47)), RAD(4.5+3 * COS(SINE / 47))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.3*SIZE-0 * COS(SINE / 28), 0.5*SIZE+0.1 * COS(SINE / 28), 0*SIZE+0 * COS(SINE / 28)) * ANGLES(RAD(-8+-3 * COS(SINE / 55)), RAD(20+8 * COS(SINE / 67)), RAD(-20+-4 * COS(SINE / 29))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.3*SIZE-0 * COS(SINE / 28), 0.5*SIZE+0.05 * COS(SINE / 28), 0*SIZE+0 * COS(SINE / 28)) * ANGLES(RAD(-8+-4 * COS(SINE / 59)), RAD(-20+-7 * COS(SINE / 62)), RAD(20+5 * COS(SINE / 50))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1), -0.6*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+1.5 * COS(SINE / 34)), RAD(90+0 * COS(SINE / 34)), RAD(-20+-5 * COS(SINE / 34))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+1 * COS(SINE / 38)), RAD(-90+0 * COS(SINE / 38)), RAD(20+2 * COS(SINE / 38))), 1 / Animation_Speed)

			elseif mode == 7 then

				sick.SoundId = "rbxassetid://611191130"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("iNSaNiTYFullVersion")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), 0*SIZE+((1) - 1) * COS(SINE / 1)) * ANGLES(math.rad(63+-5*math.cos(SINE/52)),math.rad(180+-3*math.cos(SINE/37)),math.rad(0+2*math.cos(SINE/78))), 1 / Animation_Speed)

				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0.15 * COS(SINE / 47), -0.5*SIZE+0 * COS(SINE / 47), 0.5*SIZE+0.1 * COS(SINE / 28)) * ANGLES(RAD(70+0 * COS(SINE / 47)), RAD(0+-3 * COS(SINE / 47)), RAD(4.5+3 * COS(SINE / 47))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.3*SIZE-0 * COS(SINE / 28), 0.5*SIZE+0.1 * COS(SINE / 28), 0*SIZE+0 * COS(SINE / 28)) * ANGLES(RAD(-8+-3 * COS(SINE / 55)), RAD(20+8 * COS(SINE / 67)), RAD(-20+-4 * COS(SINE / 29))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.3*SIZE-0 * COS(SINE / 28), 0.5*SIZE+0.05 * COS(SINE / 28), 0*SIZE+0 * COS(SINE / 28)) * ANGLES(RAD(-8+-4 * COS(SINE / 59)), RAD(-20+-7 * COS(SINE / 62)), RAD(20+5 * COS(SINE / 50))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1), -0.6*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+1.5 * COS(SINE / 34)), RAD(90+0 * COS(SINE / 34)), RAD(-20+-5 * COS(SINE / 34))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+1 * COS(SINE / 38)), RAD(-90+0 * COS(SINE / 38)), RAD(20+2 * COS(SINE / 38))), 1 / Animation_Speed)

			elseif mode == 9 then

				sick.SoundId = "rbxassetid://6454152476"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("HSC - XSE")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), 0*SIZE+((1) - 1) * COS(SINE / 1)) * ANGLES(math.rad(63+-5*math.cos(SINE/52)),math.rad(180+-3*math.cos(SINE/37)),math.rad(0+2*math.cos(SINE/78))), 1 / Animation_Speed)

				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0.15 * COS(SINE / 47), -0.5*SIZE+0 * COS(SINE / 47), 0.5*SIZE+0.1 * COS(SINE / 28)) * ANGLES(RAD(70+0 * COS(SINE / 47)), RAD(0+-3 * COS(SINE / 47)), RAD(4.5+3 * COS(SINE / 47))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.3*SIZE-0 * COS(SINE / 28), 0.5*SIZE+0.1 * COS(SINE / 28), 0*SIZE+0 * COS(SINE / 28)) * ANGLES(RAD(-8+-3 * COS(SINE / 55)), RAD(20+8 * COS(SINE / 67)), RAD(-20+-4 * COS(SINE / 29))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.3*SIZE-0 * COS(SINE / 28), 0.5*SIZE+0.05 * COS(SINE / 28), 0*SIZE+0 * COS(SINE / 28)) * ANGLES(RAD(-8+-4 * COS(SINE / 59)), RAD(-20+-7 * COS(SINE / 62)), RAD(20+5 * COS(SINE / 50))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1), -0.6*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+1.5 * COS(SINE / 34)), RAD(90+0 * COS(SINE / 34)), RAD(-20+-5 * COS(SINE / 34))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+1 * COS(SINE / 38)), RAD(-90+0 * COS(SINE / 38)), RAD(20+2 * COS(SINE / 38))), 1 / Animation_Speed)

			elseif mode == 11 then

				sick.SoundId = "rbxassetid://4770746196"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Antiv7")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(90+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 50), 0*SIZE+0 * COS(SINE / 50), 1*SIZE+0.5 * COS(SINE / 50)) * ANGLES(RAD(20+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(20+0 * COS(SINE / 50)), RAD(0+0 * COS(SINE / 50)), RAD(-10+-10 * COS(SINE / 50))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(80+5 * COS(SINE / 25)), RAD(0+0 * COS(SINE / 25)), RAD(45+0 * COS(SINE / 25))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-20+0 * COS(SINE / 50)), RAD(80+0 * COS(SINE / 50)), RAD(10+10 * COS(SINE / 50))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-10+0 * COS(SINE / 50)), RAD(-80+0 * COS(SINE / 50)), RAD(-10+-10 * COS(SINE / 50))), 1 / Animation_Speed)

			elseif mode == 1 then

				sick.SoundId = "rbxassetid://2677233603"
				sick.Pitch = 1
				NAMEMODE.Text = BAChanges[MRANDOM(1,#BAChanges)]
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), 0*SIZE+((1) - 1) * COS(SINE / 1)) * ANGLES(math.rad( 90+5*math.cos(SINE/12)),math.rad(180+15*math.cos(SINE/12)),math.rad(math.random(-45, 55)+0*math.cos(SINE/25))), 1 / Animation_Speed)

				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1), -0.1*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(5+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-35+WALKSPEEDVALUE * COS(SINE / WALKSPEEDVALUE)), RAD(0+0 * COS(SINE / 1)), RAD(-5+0 * COS(SINE / 1))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.4*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(250+0 * COS(SINE / 1)), RAD(20+0 * COS(SINE / 1)), RAD(-80+0 * COS(SINE / 1))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / WALKSPEEDVALUE), -1*SIZE+-0.15 * COS(SINE / WALKSPEEDVALUE), -0.2*SIZE+0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0+0 * COS(SINE / WALKSPEEDVALUE)), RAD(90+0 * COS(SINE / WALKSPEEDVALUE)), RAD(-15+0 * COS(SINE / WALKSPEEDVALUE))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / WALKSPEEDVALUE), -1*SIZE+-0.15 * COS(SINE / WALKSPEEDVALUE), -0.2*SIZE+-0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0+0 * COS(SINE / WALKSPEEDVALUE)), RAD(-90+0 * COS(SINE / WALKSPEEDVALUE)), RAD(15+0 * COS(SINE / WALKSPEEDVALUE))), 1 / Animation_Speed)

			elseif mode == 14 then

				sick.SoundId = "rbxassetid://143666548"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Vibing")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+-0.05 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(45+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 9), 0*SIZE+0 * COS(SINE / 9), 0*SIZE+-0.5 * math.sin(SINE / 9)) * ANGLES(RAD(45+0 * COS(SINE / 9)), RAD(0+0 * COS(SINE / 9)), RAD(0+0 * COS(SINE / 9))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(135+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), -0.1*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-45+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-10+0 * COS(SINE / 9)), RAD(80+0 * COS(SINE / 9)), RAD(5+5 * COS(SINE / 9))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-10+0 * COS(SINE / 9)), RAD(-90+0 * COS(SINE / 9)), RAD(-5+-5 * COS(SINE / 9))), 1 / Animation_Speed)

			elseif mode == 12 then

				sick.SoundId = "rbxassetid://1632083717"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Redemption")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+((1) - 1) * COS(SINE / 1)) * ANGLES(math.rad(105+-2.5*math.cos(SINE/12)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- -0.25 * COS(SINE / 95), 0.92*SIZE+0 * COS(SINE / 95), 4*SIZE+-2 * COS(SINE / 95)) * ANGLES(RAD(70+0 * COS(SINE / 47)), RAD(0+0 * COS(SINE / 47)), RAD(4.5+3 * COS(SINE / 47))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-0.75*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-25+math.random(-23,23)  * COS(SINE / 1)), RAD(0+math.random(-23,23) * COS(SINE / 1)), RAD(45+math.random(-23,23) * COS(SINE / 1))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(12+-4.1 * COS(SINE / 12)), RAD(0+0 * COS(SINE / 12)), RAD(0+0 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 12), -0.5*SIZE+-0.02 * COS(SINE / 12), -0.5*SIZE+0 * COS(SINE / 12)) * ANGLES(RAD(-10+-2.5 * COS(SINE / 21)), RAD(90+0 * COS(SINE / 21)), RAD(0+0 * COS(SINE / 21))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 12), -1*SIZE+-0.02 * COS(SINE / 12), -0.01*SIZE+0 * COS(SINE / 12)) * ANGLES(RAD(-20+2.5 * COS(SINE / 51)), RAD(-90+0 * COS(SINE / 51)), RAD(0+0 * COS(SINE / 51))), 1 / Animation_Speed)

			elseif mode == 16 then

				sick.SoundId = "rbxassetid://6768783121"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("mlc")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 0.75*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(50+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 20), 0*SIZE+0 * COS(SINE / 20), 0*SIZE+0.5 * math.sin(SINE / 20)) * ANGLES(RAD(40+-1 * COS(SINE / 20)), RAD(0+0 * COS(SINE / 20)), RAD(0+0 * COS(SINE / 20))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-45+0 * COS(SINE / 19)), RAD(-5+-2 * COS(SINE / 19)), RAD(0+0 * COS(SINE / 19))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.4*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(250+0 * COS(SINE / 1)), RAD(20+0 * COS(SINE / 1)), RAD(-80+0 * COS(SINE / 1))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-50+35 * COS(SINE / 20)), RAD(80+0 * COS(SINE / 20)), RAD(15+-25 * COS(SINE / 20))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-35+35 * COS(SINE / 20)), RAD(-80+0 * COS(SINE / 20)), RAD(-15+25 * COS(SINE / 20))), 1 / Animation_Speed)	

			elseif mode == 99 then

				sick.SoundId = "rbxassetid://171230598"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Vaporwave")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(110+math.random(-24,24)*math.cos(SINE/30)),math.rad(180+math.random(-24,24)*math.cos(SINE/28)),math.rad(0+math.random(-24,24)*math.cos(SINE/25))), 1 / Animation_Speed)

				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 18), 0*SIZE+0 * COS(SINE / 18), 2*SIZE+1 * COS(SINE / 18)) * ANGLES(RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(180+math.random(-24,24) * COS(SINE / 1)), RAD(0+math.random(-24,24) * COS(SINE / 1)), RAD(25+math.random(-24,24) * COS(SINE / 1))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(180+math.random(-24,24) * COS(SINE / 1)), RAD(0+math.random(-24,24) * COS(SINE / 1)), RAD(-25+math.random(-24,24) * COS(SINE / 1))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-20+1 * COS(SINE / 18)), RAD(0+0 * COS(SINE / 18)), RAD(-80+0 * COS(SINE / 18))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.7*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-35+1 * COS(SINE / 18)), RAD(0+0 * COS(SINE / 18)), RAD(80+0 * COS(SINE / 18))), 1 / Animation_Speed)

			elseif mode == 5 then


				sick.SoundId = "rbxassetid://6207243296"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("iNSaNiTY")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(90+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 50), 0*SIZE+0 * COS(SINE / 50), 3*SIZE+-0.5 * math.sin(SINE / 50)) * ANGLES(RAD(20+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(20+0 * COS(SINE / 50)), RAD(0+0 * COS(SINE / 50)), RAD(-10+-10 * math.sin(SINE / 50))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-41.6+-4 * math.sin(SINE / 50)), RAD(0+0 * COS(SINE / 50)), RAD(0+0 * COS(SINE / 50))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-20+0 * COS(SINE / 50)), RAD(80+0 * COS(SINE / 50)), RAD(10+10 * math.sin(SINE / 50))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-10+0 * COS(SINE / 50)), RAD(-80+0 * COS(SINE / 50)), RAD(-10+-10 * math.sin(SINE / 50))), 1 / Animation_Speed)

			elseif mode == 6 then

				sick.SoundId = "rbxassetid://7092435374"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Hyperskidded Cannon XSE")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(70+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 28), -0.5*SIZE+0 * COS(SINE / 28), 0.5*SIZE+0.1 * COS(SINE / 28)) * ANGLES(RAD(75+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-30+0 * COS(SINE / 28)), RAD(0+0 * COS(SINE / 28)), RAD(-30+-2.5 * COS(SINE / 28))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.9*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), -0.25*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+0 * COS(SINE / 1)), RAD(-10+0 * COS(SINE / 1)), RAD(-90+0 * COS(SINE / 1))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -0.25*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-2.5+0 * COS(SINE / 1)), RAD(90+0 * COS(SINE / 1)), RAD(-20+0 * COS(SINE / 1))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-2.5+0 * COS(SINE / 1)), RAD(-90+0 * COS(SINE / 1)), RAD(20+0 * COS(SINE / 1))), 1 / Animation_Speed)

			elseif mode == 8 then

				sick.SoundId = "rbxassetid://6291841343"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("LCV1")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(70+-3*math.cos(SINE/12)),math.rad(180+-2.5*math.cos(SINE/12)),math.rad(0+-2.5*math.cos(SINE/12))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 12), 0*SIZE+0 * COS(SINE / 12), 0*SIZE+0.05 * COS(SINE / 12)) * ANGLES(RAD(20+0 * COS(SINE / 12)), RAD(0+2.5 * COS(SINE / 12)), RAD(0+-2.5 * COS(SINE / 12))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 12), 0.5*SIZE+0 * COS(SINE / 12), 0*SIZE+-0.2 * COS(SINE / 12)) * ANGLES(RAD(20+-45 * COS(SINE / 12)), RAD(0+-10 * COS(SINE / 12)), RAD(0+2.5 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-60+-5 * COS(SINE / 12)), RAD(0+-2.5 * COS(SINE / 12)), RAD(5+2.5 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+0 * COS(SINE / 1)), RAD(85+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+0 * COS(SINE / 1)), RAD(-85+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)

			elseif mode == 10 then

				sick.SoundId = "rbxassetid://6190635423"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Spookeez")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 0.75*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(60+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)

				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 15), 0*SIZE+0 * COS(SINE / 15), 3*SIZE+0.5 * COS(SINE / 15)) * ANGLES(RAD(40+-5 * COS(SINE / 30)), RAD(0+0 * COS(SINE / 30)), RAD(0+0 * COS(SINE / 30))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-45+0 * COS(SINE / 19)), RAD(0+0 * COS(SINE / 19)), RAD(-5+-2 * COS(SINE / 19))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-45+0 * COS(SINE / 19)), RAD(0+0 * COS(SINE / 19)), RAD(5+2 * COS(SINE / 19))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1), -0.5*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-20+9 * COS(SINE / 74)), RAD(80+0 * COS(SINE / 74)), RAD(0+5 * COS(SINE / 37))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-20+-9 * COS(SINE / 54)), RAD(-80+0 * COS(SINE / 54)), RAD(0+-5 * COS(SINE / 41))), 1 / Animation_Speed)

			elseif mode == 13 then
				sick.SoundId = "rbxassetid://937247562"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Dep")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(90+0*math.cos(SINE/30)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 50), 0*SIZE+0 * COS(SINE / 50), 3*SIZE+-0.5 * math.sin(SINE / 50)) * ANGLES(RAD(20+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(20+0 * COS(SINE / 50)), RAD(0+0 * COS(SINE / 50)), RAD(-10+-10 * math.sin(SINE / 50))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-41.6+-4 * math.sin(SINE / 50)), RAD(0+0 * COS(SINE / 50)), RAD(0+0 * COS(SINE / 50))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-20+0 * COS(SINE / 50)), RAD(80+0 * COS(SINE / 50)), RAD(10+10 * math.sin(SINE / 50))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-10+0 * COS(SINE / 50)), RAD(-80+0 * COS(SINE / 50)), RAD(-10+-10 * math.sin(SINE / 50))), 1 / Animation_Speed)

			elseif mode == 15 then

				sick.SoundId = "rbxassetid://1382488262"
				sick.Pitch = 1
				NAMEMODE.Text = RandomCaps ("Pandora")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+((1.1*SIZE)-1)) * ANGLES(math.rad(105+-1*math.cos(SINE/(WALKSPEEDVALUE / 2))),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)

				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1), -0.1*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(5+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 1), 0.5*SIZE+0 * COS(SINE / 1), 0*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(20+0 * COS(SINE / 50)), RAD(0+0 * COS(SINE / 50)), RAD(-10+-10 * math.sin(SINE / 50))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.1*SIZE-0 * COS(SINE / WALKSPEEDVALUE), 0.5*SIZE+0 * COS(SINE / WALKSPEEDVALUE), 0.5*SIZE+0 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(-35+0 * COS(SINE / 1)), RAD(-25+2.5 * SIN(SINE / WALKSPEEDVALUE)), RAD(-55+2.5 * SIN(SINE / WALKSPEEDVALUE))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 2), -1*SIZE+-0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2*SIZE+0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(-0.2+0.2 * COS(SINE / 1)), RAD(90+0 * COS(SINE / 1)), RAD(-15+0 * COS(SINE / 1))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 2), -1*SIZE+-0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2*SIZE+-0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0+0 * COS(SINE / 2)), RAD(-90+0 * COS(SINE / 2)), RAD(15+0 * COS(SINE / 2))), 1 / Animation_Speed)

			elseif mode == 17 then

				sick.SoundId = "rbxassetid://6275837083"
				sick.Pitch = 1
				Humanoid.WalkSpeed = 30
				NAMEMODE.Text = RandomCaps ("Glitch")
				NAMEMODE.Font = Enum.Font:GetEnumItems()[math.random(1, #Enum.Font:GetEnumItems())]



				Neck.C0 = Clerp(Neck.C0, CF(0*SIZE+0 * COS(SINE / 1), 1.0*SIZE+0 * COS(SINE / 1), -.0*SIZE+0 * COS(SINE / 1)) * ANGLES(math.rad(80+-10*math.sin(SINE/9)),math.rad(180+0*math.cos(SINE/28)),math.rad(0+0*math.cos(SINE/25))), 1 / Animation_Speed)        

				WingLweld.C0 = Clerp(WingLweld.C0, CF(-1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+-30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				WingRweld.C0 = Clerp(WingRweld.C0, CF(1.8*SIZE+0 * COS(SINE / 25), 0.75*SIZE+0 * COS(SINE /32), 0.9*SIZE+-0.7 * COS(SINE / 20)) * ANGLES(RAD(0+0 * COS(SINE / 50)), RAD(180+30* COS(SINE / 20)), RAD(0+0 * COS(SINE / 50))), 1 / Animation_Speed)
				auraweld.C0 = Clerp(auraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0+0 * COS(SINE / 505)), RAD(0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				redauraweld.C0 = Clerp(redauraweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0.5*SIZE+0.5 * COS(SINE /55), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+360* COS(SINE / 65)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)
				swordhaloweld.C0 = Clerp(swordhaloweld.C0, CF(0*SIZE+0.25 * COS(SINE / 15), 2*SIZE-0.25 * COS(SINE /15), 2.2*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(0-0 * COS(SINE / 505)), RAD(0-0* COS(SINE / 55)), RAD(0+360 * COS(SINE / 32))), 1 / Animation_Speed)
				demonweld.C0 = Clerp(demonweld.C0, CF(0*SIZE-0.25 * COS(SINE / 32), 2*SIZE+0.25 * COS(SINE /32), 0.6*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-90+5 * COS(SINE / 505)), RAD(0+360* COS(SINE / 55)), RAD(0-5 * COS(SINE / 32))), 1 / Animation_Speed)
				gunweld.C0 = Clerp(gunweld.C0, CF(0*SIZE+0 * COS(SINE / 15), 0*SIZE-0 * COS(SINE /15), 0*SIZE+0 * COS(SINE / 15)) * ANGLES(RAD(-0+0 * COS(SINE / 505)), RAD(-0+0* COS(SINE / 55)), RAD(0-0 * COS(SINE / 15))), 1 / Animation_Speed)

				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0*SIZE- 0 * COS(SINE / 9), 0*SIZE+0 * COS(SINE / 9), 3*SIZE+0.5 * COS(SINE / 9)) * ANGLES(RAD(20+-2.5 * math.sin(SINE / 9)), RAD(0+0 * COS(SINE / 9)), RAD(0+0 * COS(SINE / 9))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(-1.35*SIZE-0 * COS(SINE / 9), 0.5*SIZE+0.25 * math.sin(SINE / 9), 0*SIZE+0 * COS(SINE / 9)) * ANGLES(RAD(-50+5 * math.sin(SINE / 9)), RAD(0+0 * COS(SINE / 9)), RAD(0+0 * COS(SINE / 9))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(1.35*SIZE-0 * COS(SINE / 9), 0.5*SIZE+0.25 * math.sin(SINE / 9), 0*SIZE+0 * COS(SINE / 9)) * ANGLES(RAD(110+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1)), RAD(0+0 * COS(SINE / 1))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(-10+0 * COS(SINE / 9)), RAD(80+0 * COS(SINE / 9)), RAD(5+5 * math.sin(SINE / 9))), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE+0 * COS(SINE / 1), -1*SIZE+0 * COS(SINE / 1), -0.01*SIZE+0 * COS(SINE / 1)) * ANGLES(RAD(0+0 * COS(SINE / 9)), RAD(-80+0 * COS(SINE / 9)), RAD(-5+-5 * math.sin(SINE / 9))), 1 / Animation_Speed)

			end end
		unanchor()

		if Rooted == false then
			Disable_Jump = false
			Humanoid.WalkSpeed = Speed
		elseif Rooted == true then
			Disable_Jump = true
			Humanoid.WalkSpeed = 0
		end
		sick.Looped = true
		sick.Pitch = 1
		sick.Volume = 10
		sick:Resume()
		sick.Parent = Torso
		Humanoid.JumpPower = 55
	end 

	Humanoid.CameraOffset = Vector3.new(0, Torso.Position.Y - RootPart.Position.Y, 0)
end
else
	game.StarterGui:SetCore("SendNotification", {
		Title = "Not Whitelisted";
		Text = "Your game will close in 1 second.";
		Duration = "5";
	})
	wait(1)
	local close = pcall(function()
		game.Players.LocalPlayer:Kick("Ask Chara#1493 for wl")
	end)
end
-- -gh 4623059912,5463718312,5593848751,5505301521,4773932088,4876469013,6904794619
