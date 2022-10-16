function onEvent(name, value1, value2)
	if name == "text" then
		makeLuaText('text', value1, 770, 250, 620);
		setTextSize('text', '50') --text size 
		addLuaText('text', true);
		setTextColor('text', 'FF0000')
		setObjectCamera('text', 'other');
		runTimer('wait', value2);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'text', 0, 0.3, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaText('text', true);
	end
end