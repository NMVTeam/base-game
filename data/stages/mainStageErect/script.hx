import funkin.objects.Bopper;

final path = 'backgrounds/week1/erect';

function onLoad()
{
	var solid = new FlxSprite(-500, -1000).makeGraphic(2400, 2000, 0xFF222026);
	solid.scrollFactor.set();
	add(solid);
	
	brightLightSmall = new FlxSprite(967, -103).loadGraphic(Paths.image('$path/brightLightSmall'));
	brightLightSmall.scrollFactor.set(1.2, 1.2);
	brightLightSmall.zIndex = 10;
	add(brightLightSmall);
	
	crowd = new Bopper(682, 290).setFrames(Paths.getSparrowAtlas('$path/crowd'));
	crowd.addAnimByPrefix('idle', 'idle', 12, true);
	crowd.dance();
	crowd.scrollFactor.set(.8, .8);
	crowd.zIndex = 5;
	add(crowd);
	
	var bg = new FlxSprite(-765, -247).loadGraphic(Paths.image('$path/bg'));
	bg.zIndex = 20;
	add(bg);
	
	var server = new FlxSprite(-991, 205).loadGraphic(Paths.image('$path/server'));
	server.zIndex = 30;
	add(server);
	
	lights = new FlxSprite(-847, -245).loadGraphic(Paths.image('$path/lights'));
	lights.zIndex = 4000;
	lights.scrollFactor.set(1.2, 1.2);
	add(lights);
	
	orangeLight = new FlxSprite(189, -500).loadGraphic(Paths.image('$path/orangeLight'));
	orangeLight.setScale(1, 1700);
	orangeLight.zIndex = 80;
	add(orangeLight);
	
	lightgreen = new FlxSprite(-171, 242).loadGraphic(Paths.image('$path/lightgreen'));
	lightgreen.zIndex = 40;
	add(lightgreen);
	
	lightred = new FlxSprite(-101, 560).loadGraphic(Paths.image('$path/lightred'));
	lightred.zIndex = 40;
	add(lightred);
	
	lightAbove = new FlxSprite(804, -117).loadGraphic(Paths.image('$path/lightAbove'));
	lightAbove.zIndex = 4500;
	add(lightAbove);
	
	brightLightSmall.blend = orangeLight.blend = lightgreen.blend = lightred.blend = lightAbove.blend = 0;
}

function makeCharShader(_brightness, _hue, _contrast, _saturation)
{
	var shader = newShader('adjustColor');
	shader.setFloat('brightness', _brightness);
	shader.setFloat('hue', _hue);
	shader.setFloat('contrast', _contrast);
	shader.setFloat('saturation', _saturation);
	
	return shader;
}

function onCreatePost()
{
	boyfriend.shader = makeCharShader(-23, 12, 7, 0);
	gf.shader = makeCharShader(-30, -9, -4, 0);
	dad.shader = makeCharShader(-33, -32, -23, 0);
}
