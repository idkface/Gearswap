function get_sets()
    mote_include_version = 2

    -- Load and initialize the include file.
    include('Mote-Include.lua')
end

function user_setup()
	state.IdleMode:options('Normal', 'PDT', 'MDT') --sets the different idle modes you can cycle through using ctrl+f12 (defined in the globals file)
	set_macro_page(1, 5) --sets my macro book to to page 1, 5 (where i have my geo macros saved)
	send_command('input /lockstyleset 20') --sets my lockstyle to 20 (where i have my geo lockstyle saved)
end

function init_gear_sets()

    ------------------------------------------------------------------------
    ----------------------------- Precast Sets -----------------------------
    ------------------------------------------------------------------------

    --Precast sets to enhance job abilities
    sets.precast.JA.Bolster = {body="Bagua Tunic +1"}
    sets.precast.JA['Full Circle'] = {head="Azimuth Hood +1"} 
    sets.precast.JA['Life Cycle'] = {body="Geo. Tunic +1", back="Nantosuelta's Cape"}
	sets.precast.JA['Mending Halation'] = {legs="Bagua Pants +1"}
	sets.precast.JA['Radial Arcana'] = {feet="Bagua Sandals +1"}
	
	--Precast Fastcast: use as much fastcast gear as possible
	sets.precast.FC = {
		main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Merlinic Hood",
		body="Merlinic Jubbah",
		hands="Geo. Mitaines +1",
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet={ name="Amalric Nails", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Conserve MP"+6',}},
		neck="Incanter's Torque",
		waist="Witful Belt",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Swith Cape",
	}
	
	
	------------------------------------------------------------------------
    ----------------------------- Midcast Sets -----------------------------
    ------------------------------------------------------------------------
	
	--Geo spells: use as much +geo skill as possible
	sets.midcast.Geomancy = {
		main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body={ name="Bagua Tunic +1", augments={'Enhances "Bolster" effect',}},
		hands="Geo. Mitaines +1",
		legs="Geo. Pants +1",
		feet="Azimuth Gaiters +1",
		neck="Incanter's Torque",
		waist="Carrier's Sash",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Lifestream Cape", augments={'Geomancy Skill +8','Indi. eff. dur. +18',}},
	}
	
	--Indi spells: this uses the geo spell set and then swaps the hands and legs for +indi duration gear
	sets.midcast.Indi = set_combine(sets.midcast.Geomancy, {
        hands="Geo. Mitaines +1",
        legs="Bagua Pants +1",
    })
		
	--Cure spells: uses cure potency gear and conserve MP for slots where I don't have cure potency gear
	sets.midcast.Cure = {
		main={ name="Serenity", augments={'MP+50','Enha.mag. skill +10','"Cure" potency +5%','"Cure" spellcasting time -10%',}},
		sub="Verse Strap +1",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Vanya Hood",
		body="Merlinic Jubbah",
		hands="Weath. Cuffs +1",
		legs={ name="Lengo Pants", augments={'INT+5','Mag. Acc.+4','"Mag.Atk.Bns."+1','"Refresh"+1',}},
		feet={ name="Medium's Sabots", augments={'MP+50','MND+10','"Conserve MP"+7','"Cure" potency +5%',}},
		neck="Incanter's Torque",
		waist="Luminary Sash",
		left_ear="Etiolation Earring",
		right_ear="Aredan Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Gwyddion's Cape",
	}
	
	--Curaga spells: uses the same set as Cure
	sets.midcast.Curaga = sets.midcast.Cure
	
	--Elemental magic: use as much macc and matt as possible (my set is super bad)
	sets.midcast['Elemental Magic'] = {
		main={ name="Serenity", augments={'MP+50','Enha.mag. skill +10','"Cure" potency +5%','"Cure" spellcasting time -10%',}},
		sub="Wizzan Grip",
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs",
		legs="Jhakri Slops",
		feet={ name="Amalric Nails", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+15','"Conserve MP"+6',}},
		neck="Incanter's Torque",
		waist="Othila Sash",
		left_ear="Moldavite Earring",
		right_ear="Aredan Earring",
		left_ring="Shiva Ring",
		right_ring="Shiva Ring",
		back="Gwyddion's Cape",	
	}
	
	
	------------------------------------------------------------------------
    -----------------------------  Idle  Sets  -----------------------------
    ------------------------------------------------------------------------
	
	 --This is the 'Normal' IdleMode. Normal is the default mode
	sets.idle = {
	    main="Solstice",
        sub="Genmei Shield",
        ranged="Dunna",
        head="Azimuth Hood +1",
        body="Jhakri Robe +1",
        hands="Bagua Mitaines +1",
        legs="Assid. Pants +1",
        feet="Geomancy Sandals",
        neck="Incanter's Torque",
		left_ear="Handler's Earring",
		right_ear="Handler's Earring +1",
 		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
        back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Pet: "Regen"+10','Phys. dmg. taken-6%',}},
        waist="Carrier's Sash",
	}
	sets.idle.PDT = {} --This is the 'PDT' IdleMode. It's defined at the beginning of this file. You just use PDT gear here.
					   --Ctrl+F12 cycles through defense modes (the keybind for cycling is found in the Globals lua)
	sets.idle.MDT = {} --This is the 'MDT' IdleMode. It's defined at the beginning of this file. You just use MDT gear here.
					   --Ctrl+F12 cycles through defense modes (the keybind for cycling is found in the Globals lua)
	
	--This is the 'Normal' IdleMode when a Luopan is active. Normal is the default mode
	sets.idle.Pet = {
		main={ name="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head={ name="Telchine Cap", augments={'Pet: "Regen"+3','Pet: Damage taken -4%',}},
		body={ name="Telchine Chas.", augments={'Pet: "Regen"+3','Pet: Damage taken -4%',}},
		hands={ name="Telchine Gloves", augments={'Pet: "Regen"+3','Pet: Damage taken -4%',}},
		legs={ name="Telchine Braconi", augments={'Pet: "Regen"+3','Pet: Damage taken -4%',}},
		feet={ name="Telchine Pigaches", augments={'Pet: "Regen"+3','Pet: Damage taken -4%',}},
		neck="Incanter's Torque",
		waist="Carrier's Sash",
		left_ear="Handler's Earring",
		right_ear="Handler's Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Pet: "Regen"+10','Phys. dmg. taken-6%',}},
	}
	
	sets.idle.Pet.PDT = {} --This is the 'PDT' IdleMode when a Luopan is active
	sets.idle.Pet.MDT = {} --This is the 'MDT' IdleMode when a Luopan is active
	
end