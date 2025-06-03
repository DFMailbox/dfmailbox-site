# DFJson
DFJson (Diamond Fire JSON) is a simple data format that makes it easier to send DiamondFire values over JSON.
It is loosely based on DiamondFire's template format values.

To see how to use it in DiamondFire or in your favorite programming language go to [Libraries](#libraries)

Note: DFJson as of now is **unstable** and can have breaking changes

# Basic Structure
DFJson has an official schema that can be found at [https://dftools.dev/dfjson/schema/dfjson-0.1.1.json](schema/dfjson-0.1.1.json)

To express a value, set the `id` value to one of the valid types and fill out all the keys.
```json
{
    "id": "vec",
    "x": 1,
    "y": 2,
    "z": 3
}
```
For development, it is recommended to include the schema for auto completion
```json
{
    "$schema": "https://dftools.dev/dfjson/schema/dfjson-0.1.1.json",
    "id": "num",
    "val": 42
}
```


## Examples
Component (Styled Text)
```json
{
    "id": "comp",
    "val": "<rainbow>Hello World!"
}
```
String
```json
{
    "id": "str",
    "val": "hunter2"
}
```
Number
```json
{
    "id": "num",
    "val": 42
}
```
Location
```json
{
    "id": "loc",
    "x": 42.0,
    "y": 12.5,
    "z": 420.0,
    "pitch": 24.0,
    "yaw": 90.0
}
```
Vector
```json
{
    "id": "vec",
    "x": 0.3,
    "y": 66.9,
    "z": 2.0
}
```
Sound
```json
{
    "id": "snd",
    "sound": "Stone Step",
    "variant": "stone1",
    "pitch": 1.0,
    "volume": 1.0
}
```
Custom Sound
```json
{
    "id": "csnd",
    "pitch": 2.0,
    "volume": 1,
    "sound": "entity.tnt.primed"
}
```
Particle
```json
{
  "id": "particle",
  "particle": "Fade Dust",
  "cluster": {
    "amount": 22,
    "horizontal": -3.3,
    "vertical": 32
  },
  "data": {
    "color": "#ABCDEF",
    "color_variation": 22,
    "size": 3,
    "size_variation": 42,
    "color_fade": "#FFFFFF"
  }
}
```
Potion
```json
{
    "id": "potion",
    "potion": "Strength",
    "duration": 200,
    "amplifier": 5
}
```
List
```json
{
    "id": "list",
    "val": [
        {
            "id": "str",
            "val": "Notch"
        },
        {
            "id": "str",
            "val": "Jeremaster"
        }
    ]
}
```
Dictionary
```json
{
    "id": "dict",
    "val": {
        "name": {
            "id": "comp",
            "val": "<gold>DFJson"
        },
        "description": {
            "id": "comp",
            "val": "A simple data format that makes it easier to send DiamondFire values over JSON"
        },
        "numbers": {
            "id": "list",
            "val": [
                {
                    "id": "num",
                    "val": 42
                },
                {
                    "id": "num",
                    "val": 2014
                }
            ]
        }
    }
}
```
Items
```none
todo, items are pain
```

# Libraries
DFJson is pretty new meaning there aren't that many libraries

- DiamondFire: `Codevault: @3638`
- Gleam: <https://hexdocs.pm/gl_dfjson/>
- Typescript: No official package, generate types [here](https://transform.tools/json-schema-to-typescript)
