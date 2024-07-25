extends Resource
class_name Vector2int

# THIS FILE WAS AUTOMATICALLY GENERATED by the OpenAPI Generator project.
# For more information on how to customize templates, see:
# https://openapi-generator.tech
# https://github.com/OpenAPITools/openapi-generator/tree/master/modules/openapi-generator/src/main/resources/gdscript
# The OpenAPI Generator Community, © Public Domain, 2022

# Vector2int Model


# the X coordinate
# Required: True
# isArray: false
@export var x: float:
	set(value):
		__x__was__set = true
		x = value
var __x__was__set := false

# the Y coordinate
# Required: True
# isArray: false
@export var y: float:
	set(value):
		__y__was__set = true
		y = value
var __y__was__set := false


func bzz_collect_missing_properties() -> Array:
	var bzz_missing_properties := Array()
	if not self.__x__was__set:
		bzz_missing_properties.append("x")
	if not self.__y__was__set:
		bzz_missing_properties.append("y")
	return bzz_missing_properties


func bzz_normalize() -> Dictionary:
	var bzz_dictionary := Dictionary()
	if self.__x__was__set:
		bzz_dictionary["x"] = self.x
	if self.__y__was__set:
		bzz_dictionary["y"] = self.y
	return bzz_dictionary


# Won't work for JSON+LD
static func bzz_denormalize_single(from_dict: Dictionary):
	var me := new()
	if from_dict.has("x"):
		me.x = from_dict["x"]
	if from_dict.has("y"):
		me.y = from_dict["y"]
	return me


# Won't work for JSON+LD
static func bzz_denormalize_multiple(from_array: Array):
	var mes := Array()
	for element in from_array:
		if element is Array:
			mes.append(bzz_denormalize_multiple(element))
		elif element is Dictionary:
			# TODO: perhaps check first if it looks like a match or an intermediate container
			mes.append(bzz_denormalize_single(element))
		else:
			mes.append(element)
	return mes
