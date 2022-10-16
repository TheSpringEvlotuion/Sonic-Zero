function onCreate()

	precacheImage('hitStatic')
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Static Note' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'STATICNOTE_assets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Static Note' then
		if getProperty('dad.curCharacter') == 'tooslowsonic' then
			characterPlayAnim('dad', 'hey', true);
		end
		if getProperty('dad.curCharacter') == 'ycrsonic' then
			characterPlayAnim('dad', 'hey', true);
		end
		if getProperty('dad.curCharacter') == 'eggman' then
			characterPlayAnim('dad', 'hey', true);
		end
		
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
if not lowQuality then
	if noteType == 'Static Note' then
		playSound('static', 0.5);
		makeAnimatedLuaSprite('redstatic','hitStatic', -5, 0);
		addAnimationByPrefix('redstatic','blugh', 'staticANIMATION', 24, false);
		scaleObject('redstatic' , 1.15 , 1.15)
		setObjectCamera('redstatic', 'camother');
		addLuaSprite('redstatic');
    end
end
end